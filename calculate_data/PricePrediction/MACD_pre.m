function [MACD_up_rate,MACD_down_rate]=MACD_pre(sh)

% Pre-Processing the day high is the first colume
% here n=5
[m,n] = size(sh);
clpr = sh(2:m,4);

%% MACD
%%ԭʼ��������Ϊstk_clpr���ҵ�һ��Ϊ���̼ۣ��ڶ���Ϊ��������
%%�������ָ��(����Ҳ�ɱ�һ������)����һ���ʼ����DIFF=DEA=MACD=0,EMAshort=EMAlong=��һ������̼�
%��Ȼmatlab���Դ��ĺ���macd()����ò��ֻ�ܼ���Ĭ�ϳ��ȵ�ƽ���ƶ�ƽ���������Լ����������
%clpr=stk_clpr(:,1);%��ȡ���̼�
%date=stk_clpr(:,2);%��ȡ����
%������㳤��
shortPeriod=12;%�������̼۶��ڣ����٣�ƽ���ƶ�ƽ�����㳤��
longPeriod=26;%�������̼۳��ڣ����٣�ƽ���ƶ�ƽ�����㳤��
DEAPeriod=9;%����diff��ƽ���ƶ�ƽ�����㳤��
%����ռλ������߳�������Ч��
EMAshort=zeros(length(clpr),1);
EMAlong=zeros(length(clpr),1);
DIFF=zeros(length(clpr),1);
DEA=zeros(length(clpr),1);
MACD=zeros(length(clpr),1);
%��ѭ�����������ָ�꣨���������������ã�
EMAshort(1)=clpr(1);%��ʼ��EMAshort��һֵ
EMAlong(1)=clpr(1);%��ʼ��EMAlong��һ��ֵ
DEA(1)=0;%��ʼ����һֵ
DIFF(1)=0;
MACD(1)=0;
for t=2:length(clpr);
    %������ںͳ���EMA
    EMAshort(t)=clpr(t)*(2/(shortPeriod+1))+EMAshort(t-1)*((shortPeriod-1)/(shortPeriod+1));
    EMAlong(t)=clpr(t)*(2/(longPeriod+1))+EMAlong(t-1)*((longPeriod-1)/(longPeriod+1));
    %����DIFF
    DIFF(t)=EMAshort(t)-EMAlong(t);
    %����DEA
    DEA(t)=DIFF(t)*(2/(DEAPeriod+1))+DEA(t-1)*((DEAPeriod-1)/(DEAPeriod+1));
    %����MACD
    MACD(t)=2*(DIFF(t)-DEA(t));
   
end
   
    time = length(MACD);

%%Information Granulation
% floor: win_num is the nearest integer smaller than time/5; ** Why time/5?
win_num = floor(time/5);
%tsx is a vector {1,2,3,...,win_num};
tsx = 1:win_num;
%transpose.
tsx = tsx';
[Low,R,Up]=FIG_D(MACD','triangle',win_num);

%%Use SVM to do the Regression Analysis of Low
% Normalize Low
% Refer to Annotation *1.
[low_macd,low_ps] = mapminmax(Low);
low_ps.ymin = 100;
low_ps.ymax = 500;

[low_macd,low_ps] = mapminmax(Low,low_ps);

% Pre-processing, fit toolbox format
low_macd = low_macd';

% findc&g coefficient for the SVM
[bestmse,bestc,bestg] = SVMcgForRegress(low_macd,tsx,-10,10,-10,10,3,1,1,0.1,1);

% select again the coefficient
[bestmse,bestc,bestg] = SVMcgForRegress(low_macd,tsx,-4,8,-10,10,3,0.5,0.5,0.05,1);

% Training SVM
cmd = ['-c ', num2str(bestc), ' -g ', num2str(bestg) , ' -s 3 -p 0.1'];
low_model = svmtrain(low_macd, tsx, cmd);

% Do the prediciton
[low_predict,accurate_low,low_mse] = svmpredict(low_macd,tsx,low_model,'-b 0');
low_predict = mapminmax('reverse',low_predict,low_ps);
predict_low = svmpredict(1,win_num+1,low_model,'-b 0');
predict_low = mapminmax('reverse',predict_low,low_ps);

%%Use SVM to do the Regression Analysis of UP
[up,up_ps] = mapminmax(Up);
up_ps.ymin = 100;
up_ps.ymax = 500;

[up,up_ps] = mapminmax(Up,up_ps);
up = up';

[bestmse,bestc,bestg] = SVMcgForRegress(up,tsx,-10,10,-10,10,3,1,1,0.5);
[bestmse,bestc,bestg] = SVMcgForRegress(up,tsx,-4,8,-10,10,3,0.5,0.5,0.2);

% Train
cmd = ['-c ', num2str(bestc), ' -g ', num2str(bestg) , ' -s 3 -p 0.1'];
up_model = svmtrain(up, tsx, cmd);

% Predict
[up_predict,accurate_up,up_mse] = svmpredict(up,tsx,up_model,'-b 0');
up_predict = mapminmax('reverse',up_predict,up_ps);
predict_up = svmpredict(1,win_num+1,up_model,'-b 0');
predict_up = mapminmax('reverse',predict_up,up_ps);

MACD_final=MACD(time);
%% judge up or down
if MACD_final<0
    if predict_low>0
        MACD_up_rate=0.8;
        MACD_down_rate=1-MACD_up_rate;
    elseif predict_up<0
            if predict_up>MACD_final
                MACD_up_rate=0.6;
                MACD_down_rate=1-MACD_up_rate;
            else 
                MACD_up_rate=0.4;
                MACD_down_rate=1-MACD_up_rate;
            end
    else 
        MACD_up_rate=0.5;
        MACD_down_rate=1-MACD_up_rate;
    end
else
    if predict_up<0
        MACD_up_rate=0.2;
        MACD_down_rate=1-MACD_up_rate;
    elseif predict_low>0
             if predict_low>MACD_final
                MACD_up_rate=0.6;
                MACD_down_rate=1-MACD_up_rate;
            else 
                MACD_up_rate=0.4;
                MACD_down_rate=1-MACD_up_rate;
             end
    else
        MACD_up_rate=0.5;
        MACD_down_rate=1-MACD_up_rate;
    end    
end
        
%%clean up
close all;