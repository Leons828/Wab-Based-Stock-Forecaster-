function [RSI_up_rate,RSI_down_rate]=RSI_pre(sh)

% Pre-Processing the day high is the first colume
% here n=5
[m,n] = size(sh);
clpr = sh(2:m,4);
%% RSI indicator
rsi = rsindex(clpr);

k=length(rsi);
rsi=rsi(15:k,:);
time = length(rsi);
time = length(rsi);

%%Information Granulation
% floor: win_num is the nearest integer smaller than time/5; ** Why time/5?
win_num = floor(time/5);
%tsx is a vector {1,2,3,...,win_num};
tsx = 1:win_num;
%transpose.
tsx = tsx';
[Low,R,Up]=FIG_D(rsi','triangle',win_num);

%%Use SVM to do the Regression Analysis of Low
% Normalize Low
% Refer to Annotation *1.
[low,low_ps] = mapminmax(Low);
low_ps.ymin = 100;
low_ps.ymax = 500;

[low,low_ps] = mapminmax(Low,low_ps);

% Pre-processing, fit toolbox format
low = low';

% findc&g coefficient for the SVM
[bestmse,bestc,bestg] = SVMcgForRegress(low,tsx,-10,10,-10,10,3,1,1,0.1,1);

% select again the coefficient
[bestmse,bestc,bestg] = SVMcgForRegress(low,tsx,-4,8,-10,10,3,0.5,0.5,0.05,1);

% Training SVM
cmd = ['-c ', num2str(bestc), ' -g ', num2str(bestg) , ' -s 3 -p 0.1'];
low_model = svmtrain(low, tsx, cmd);

% Do the prediciton
[low_predict,accurate_low,low_mse] = svmpredict(low,tsx,low_model,'-b 0');
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

predict_rsi=predict_up+predict_low;
if predict_rsi<20
    RSI_up_rate=0.15;
     RSI_down_rate=1-RSI_up_rate;
elseif 20<=predict_rsi<50
     RSI_up_rate=0.3;
     RSI_down_rate=1-RSI_up_rate;
elseif 50<=predict_rsi<80
     RSI_up_rate=0.7;
    RSI_down_rate=1-RSI_up_rate;
else 80<=predict_rsi
    RSI_up_rate=0.85;
     RSI_down_rate=1-RSI_up_rate;
end
%% clean up
close all;
