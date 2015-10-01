function short_term()
%%
clear all
close all
clc
%Loadthe data
table_name='table 5';
%%%%%%%%%%
dbname = 'history';
username = 'root';
password = '';
%table_name='AAPL';
driver = 'com.mysql.jdbc.Driver';
dburl = ['jdbc:mysql://localhost:3306/' dbname];
% dburl = ['jdbc:mysql://172.31.91.200:3306/' dbname];
javaclasspath('mysql-connector-java-5.1.18-bin.jar');
conn = database(dbname, username, password, driver, dburl);

commend=sprintf('SELECT `open` FROM `%s` WHERE 1 ORDER BY `ID` ', table_name);
cursorA = exec(conn,commend);
open=fetch(cursorA);
open=(cell2mat(open.data))';

commend=sprintf('SELECT `high` FROM `%s` WHERE 1 ORDER BY `ID` ', table_name);%desc是指按“表排序字段名”倒序显示，不加desc，表示正序显示
cursorA = exec(conn,commend);
high=fetch(cursorA);
high=(cell2mat(high.data))';

commend=sprintf('SELECT `low` FROM `%s` WHERE 1 ORDER BY `ID`  ', table_name);
cursorA = exec(conn,commend);
low=fetch(cursorA);
low=(cell2mat(low.data))';

commend=sprintf('SELECT `close` FROM `%s` WHERE 1 ORDER BY `ID`  ', table_name);
cursorA = exec(conn,commend);
clo=fetch(cursorA);
clo=(cell2mat(clo.data))';

commend=sprintf('SELECT `volume` FROM `%s` WHERE 1 ORDER BY `ID` ', table_name);
cursorA = exec(conn,commend);
vol=fetch(cursorA);
vol=(cell2mat(vol.data))';

sh(:,2)=open;
sh(:,1)=high;
sh(:,3)=low;
sh(:,4)=clo;
sh(:,5)=vol;
%A(:,a)矩阵A第a列=open/high/low/clo/vol
flipud(sh);
% Pre-Processing the day high is the first colume
[m,n] = size(sh);%m,n分别是sh矩阵的行和列
ts = sh(2:m,4);%把sh矩阵第4列的2~m项赋给ts
tsx = sh(1:m-1,:);%把sh矩阵的1~m-1行赋给tsx

% Plot
% figure;
% plot(ts,'LineWidth',2);
% title('Apple day-high(2010.1.4-2014.3.10)','FontSize',12);
% xlabel('Time(2010.1.4-2014.3.10)','FontSize',12);
% ylabel('Day High','FontSize',12);
% grid on;

% Normalize
ts = ts';
tsx = tsx';
	
% normalize ts
[TS,TSps] = mapminmax(ts,1,2);	%mapminmax规范化到[1,2]区间的数据

% pliot
% figure;
% plot(TS,'LineWidth',2);
% title('Apple stock day high - Normalized','FontSize',12);
% xlabel('Time(2010.1.4-2014.3.10)','FontSize',12);
% ylabel('Normalized day high','FontSize',12);
% grid on;

TS = TS';
[TSX,TSXps] = mapminmax(tsx,1,2);	
TSX = TSX';
 
%% calculate coefficient c&g

%[bestmse,bestc,bestg] = SVMcgForRegress1(TS,TSX,-8,8,-8,8);

% print result just for testing
% disp('Print rough result');
% str = sprintf( 'Best Cross Validation MSE = %g Best c = %g Best g = %g',bestmse,bestc,bestg);
% disp(str);
% clc

[bestmse,bestc,bestg] = SVMcgForRegress1(TS,TSX,-4,4,-4,4,3,0.5,0.5,0.05);
% disp('Print precise result');
% str = sprintf( 'Best Cross Validation MSE = %g Best c = %g Best g = %g',bestmse,bestc,bestg);
% disp(str);
% 
% clc

%% Training SVM
cmd = ['-c ', num2str(bestc), ' -g ', num2str(bestg) , ' -s 3 -p 0.01'];
model = svmtrain(TS,TSX,cmd);

%% SVM Prediciton
[predict,accuracy,mse] = svmpredict(TS,TSX,model,'-b 0');
predict = mapminmax('reverse',predict',TSps);
predict = predict';

predict
% clc

close all;

% str = sprintf( 'Mean Square Error = %g Relative Coefficient = %g%%',mse(2),mse(3)*100);
% disp(str);
%% Update the database
colNames={'`predict`'};
for i=1:length(predict)
    update(conn, '`table 5`', colNames, predict(i), sprintf('where `ID`= "%d"', i+1))
end

%% plot
handle = figure;
set(handle,'PaperPositionMode','auto');
set (handle,'Position',[232,246,700,250], 'color','w')


subplot(121)
hold on;
plot(ts,'bo-');
plot(predict,'rx-');
legend('Original Data','Prediction');
hold off;
title('Comparision of Original data and prediction','FontSize',12);
xlabel('Time(2010.1.4-Present)','FontSize',12);
ylabel('Day high','FontSize',12);
grid on;
% 
% % figure;
% % error = predict - ts';
% % plot(error,'rx');
% % title('Error map(predicted data - original data)','FontSize',12);
% % xlabel('Time(2010.1.4-2014.3.10)','FontSize',12);
% % ylabel('Error','FontSize',12);
% % grid on;
% 
%a=[0];
%ts=[ts,a];
error = (predict - ts')./ts';
subplot(122)
plot(error,'rx');
axis([0,1200,-0.15,0.15]);
title('Relative Error(predicted data - original data)/original data','FontSize',12);
xlabel('Time(2010.2.1-present)','FontSize',12);
ylabel('Relative error','FontSize',12);
grid on;
snapnow;
%close all;

% stock_name=strcat(table_name,'_Short.png');
% filename=strcat('/Applications/XAMPP/xamppfiles/htdocs/Pictures/',stock_name);
% print(handle,'-dpng',filename);
% close all;
