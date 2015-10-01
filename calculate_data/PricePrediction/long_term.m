function long_term(table_name)
%%
%table_name= 'ckec_his';
%% Laod the data from database
dbname = 'history_info';
username = 'root';
password = '';
driver = 'com.mysql.jdbc.Driver';
 dburl = ['jdbc:mysql://localhost:3306/' dbname];
% dburl = ['jdbc:mysql://http://172.31.121.215:3306/' dbname];
javaclasspath('mysql-connector-java-5.1.18-bin.jar');
conn = database(dbname, username, password, driver, dburl);

% sprintf: Write formatted data to string table_name.
commend=sprintf('SELECT `open` FROM `%s` WHERE 1 ORDER BY `ID` desc', table_name);
%  CURSOR = exec(CONNECT,SQLQUERY,QTIMEOUT) returns a cursor object
%  CONNECT is a database object returned by DATABASE. sqlQuery
%  is a valid SQL statement.
cursorA = exec(conn,commend);
open=fetch(cursorA);
% cell2mat: Convert the contents of a cell array into a single matrix.
open=(cell2mat(open.data))';

% read high from table_name, where table_name is a chart name. high is one
% of the column. Transform high to string and store in commend.
commend=sprintf('SELECT `high` FROM `%s` WHERE 1 ORDER BY `ID` desc', table_name);
cursorA = exec(conn,commend);
high=fetch(cursorA);
high=(cell2mat(high.data))';

commend=sprintf('SELECT `low` FROM `%s` WHERE 1 ORDER BY `ID` desc', table_name);
cursorA = exec(conn,commend);
low=fetch(cursorA);
low=(cell2mat(low.data))';

commend=sprintf('SELECT `close` FROM `%s` WHERE 1 ORDER BY `ID` desc', table_name);
cursorA = exec(conn,commend);
clo=fetch(cursorA);
clo=(cell2mat(clo.data))';

commend=sprintf('SELECT `volume` FROM `%s` WHERE 1 ORDER BY `ID` desc', table_name);
cursorA = exec(conn,commend);
vol=fetch(cursorA);
vol=(cell2mat(vol.data))';

%temp data
% temp1=min(low(1036:1065));
% temp2=max(high(1036:1065));

sh(:,2)=high;
sh(:,1)=open;
sh(:,3)=low;
sh(:,4)=clo;
sh(:,5)=vol;
sh=flipud(sh);
% Pre-Processing the day high is the first colume
% here n=5

[m,n] = size(sh);
ts = sh(2:m,4);
time = length(ts);

%% Information Granulation
% floor: win_num is the nearest integer smaller than time/5; ** Why time/5?
win_num = floor(time/5);
%tsx is a vector {1,2,3,...,win_num};
tsx = 1:win_num;
%transpose.
tsx = tsx';
[Low,R,Up]=FIG_D(ts','triangle',win_num);

%% Use SVM to do the Regression Analysis of Low
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
 
%% Use SVM to do the Regression Analysis of R
[r,r_ps] = mapminmax(R);
r_ps.ymin = 100;
r_ps.ymax = 500;

[r,r_ps] = mapminmax(R,r_ps);
r = r';

[bestmse,bestc,bestg] = SVMcgForRegress(r,tsx,-10,10,-10,10,3,1,1,0.1);
[bestmse,bestc,bestg] = SVMcgForRegress(r,tsx,-4,8,-10,10,3,0.5,0.5,0.05);

cmd = ['-c ', num2str(bestc), ' -g ', num2str(bestg) , ' -s 3 -p 0.1'];
r_model = svmtrain(r, tsx, cmd);

[r_predict,accurate_r,r_mse] = svmpredict(r,tsx,low_model,'-b 0');
r_predict = mapminmax('reverse',r_predict,r_ps);
predict_r = svmpredict(1,win_num+1,r_model,'-b 0');
predict_r = mapminmax('reverse',predict_r,r_ps);

%% Use SVM to do the Regression Analysis of UP
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

%% Use SVM to do the Regression Analysis of UP
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

predict_up =flipud(predict_up);
predict_low=flipud(predict_low);
%% clean up
close all;
% clc

%%
%calculate the prediction accuracy
[MACD_up_rate,MACD_down_rate]=MACD_pre(sh);
[RSI_up_rate,RSI_down_rate]=RSI_pre(sh);
[MFI_up_rate,MFI_down_rate]=MFI_pre(sh);

final=ts(time);

if predict_low>final
    up_accuracy=0.7*(MACD_up_rate*0.4+RSI_up_rate*0.3+MFI_up_rate*0.3);
    down_accuracy=0.3*(MACD_down_rate*0.4+RSI_down_rate*0.3+MFI_down_rate*0.3);
elseif predict_up < final
    up_accuracy=0.3*(MACD_up_rate*0.4+RSI_up_rate*0.3+MFI_up_rate*0.3);
    down_accuracy=0.7*(MACD_down_rate*0.4+RSI_down_rate*0.3+MFI_down_rate*0.3);
else 
    up_accuracy=0.5*(MACD_up_rate*0.4+RSI_up_rate*0.3+MFI_up_rate*0.3);
    down_accuracy=0.5*(MACD_down_rate*0.4+RSI_down_rate*0.3+MFI_down_rate*0.3);
end

 up_accuracy=up_accuracy*2;
 down_accuracy=down_accuracy*2;
 
 %%
  %calculate the margin of up and down
  up_margin=(predict_up-final)/final;
  down_margin=(predict_low-final)/final;
 
%% Plot the figures and show the result

% handle = figure;
% set(handle,'PaperPositionMode','auto');
% set (handle,'Position',[232,246,700,250], 'color','w')
% subplot(121)
% plot(open,'LineWidth',2);
% title('Original Data (2010.2.1- Present)','FontSize',12);
% xlabel('Time(2010.2.1-Present)','FontSize',12);
% ylabel('Value','FontSize',12);
% grid on;
% subplot(122)
% hold on;
% plot(Low,'b+');
% plot(R,'r*');
% plot(Up,'gx');
% hold off;
% legend('Low','R','Up',2);
% title('Inforamtion Granulation Figure','FontSize',12);
% xlabel('Number of the Granulation Window','FontSize',12);
% ylabel('Value','FontSize',12);
% grid on;
% print -dtiff -r600 FIGpic;
% snapnow;


%% plot the prediction of Low
% handle = figure;
% set(handle,'PaperPositionMode','auto');
% set (handle,'Position',[232,246,700,250], 'color','w')
% subplot(121)
% hold on;
% plot(Low,'b+');
% plot(low_predict,'r*');
% legend('original low','predict low',2);
% title('original vs predict','FontSize',12);
% xlabel('Number of the Granulation Window','FontSize',12);
% ylabel('Value','FontSize',12);
% grid on;
% print -dtiff -r600 lowresult;
% subplot(122)
% error = (low_predict - Low')./low;
% plot(error,'ro');
% title('Error (predicted data-original data)','FontSize',12);
% xlabel('Number of the Granulation Window','FontSize',12);
% ylabel('Value','FontSize',12);
% grid on;
% print -dtiff -r600 lowresulterror;
% snapnow;

%% plot Prediciton of UP
% handle = figure;
% set(handle,'PaperPositionMode','auto');
% set (handle,'Position',[232,246,700,250], 'color','w')
% subplot(121)
% hold on;
% plot(Up,'b+');
% plot(up_predict,'r*');
% legend('original up','predict up',2);
% xlabel('Number of the Granulation Window','FontSize',12);
% ylabel('Value','FontSize',12);
% title('original vs predict','FontSize',12);
% grid on;
% subplot(122)
% error = (up_predict - Up')./Up';
% plot(error,'ro');
% xlabel('Number of the Granulation Window','FontSize',12);
% ylabel('Value','FontSize',12);
% title('Error (predicted data-original data)','FontSize',12);
% grid on;
% snapnow;


%%
%write the data to the database
colNames={'`pre_close`'};
update(conn, table_name, colNames, predict_low, sprintf('where `ID`= "%d"',1))

colNames={'`pre_up`'};
update(conn, table_name, colNames, predict_up, sprintf('where `ID`= "%d"', 1))

colNames={'`up_margin`'};
update(conn,table_name, colNames, up_margin, sprintf('where `ID`= "%d"',1))

colNames={'`down_margin`'};
update(conn, table_name, colNames, down_margin, sprintf('where `ID`= "%d"', 1))

colNames={'`up_accuracy`'};
update(conn,table_name, colNames, up_accuracy, sprintf('where `ID`= "%d"',1))

colNames={'`down_accuracy`'};
update(conn,table_name, colNames, down_accuracy, sprintf('where `ID`= "%d"', 1))
