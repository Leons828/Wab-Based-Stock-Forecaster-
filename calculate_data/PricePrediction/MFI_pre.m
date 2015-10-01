function [MFI_up_rate,MFI_down_rate]=MFI_pre(sh)
low=sh(:,3);
high=sh(:,2);
clo=sh(:,4);
vol=sh(:,5)
% Pre-Processing the day high is the first colume
% here n=5
[m,n] = size(sh);

%% MFI indicator
        observ = m;
        period = 14;
        % Typical Price
        tp = (high+low+clo)/3;
        
        % Up or Down
        upordn = ones(observ-1,1);
        upordn(tp(2:observ) <= tp(1:observ-1)) = -1;
        
        % Raw Money Flow
        rmf = tp(2:observ).*vol(2:observ);
        
        % Positive Money Flow
        pmf = zeros(observ-1,1);
        pmf(upordn == 1) = rmf(upordn == 1);
        
        % Negative Money Flow
        nmf = zeros(observ-1,1);
        nmf(upordn == -1) = rmf(upordn == -1);
        
        % Cumulative sum of end indices
        % Output looks like:
        % [1 16 31 46 61 76 91 ... ]
        temp_var1 = cumsum([1;(period:observ-1)'-(1:observ-period)'+1])
        % Vector of moving indices
        % Output looks like:
        % [1 2 3 4 5 2 3 4 5 6 3 4 5 6 7 4 5 6 7 8 ... ]
        temp_var2 = ones(temp_var1(observ-period+1)-1,1);
        temp_var2(temp_var1(1:observ-period)) = 2-period;
        temp_var2(1) = 1;
        temp_var2 = cumsum(temp_var2);
        
        % Money Flow Ratio
        mfr = sum(pmf(reshape(temp_var2,period,observ-period)),1)'./ ...
            sum(nmf(reshape(temp_var2,period,observ-period)),1)';
        mfr = [nan(period,1); mfr];
        
        % Money Flow Index
        mfi = 100-100./(1+mfr);   
        
%% get prediction of mfi
k=length(mfi);
mfi=mfi(15:k,:);
    time = length(mfi);

%%Information Granulation
% floor: win_num is the nearest integer smaller than time/5; ** Why time/5?
win_num = floor(time/5);
%tsx is a vector {1,2,3,...,win_num};
tsx = 1:win_num;
%transpose.
tsx = tsx';
[Low,R,Up]=FIG_D(mfi','triangle',win_num);

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

if  predict_up<20
    MFI_up_rate=0.8;
    MFI_down_rate=1-MFI_up_rate;
elseif predict_low>80
    MFI_up_rate=0.2;
    MFI_down_rate=1-MFI_up_rate;
else 
    MFI_up_rate=0.5;
    MFI_down_rate=1-MFI_up_rate;
end
%%clean up
close all;








