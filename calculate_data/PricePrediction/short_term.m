function short_term(table_name)
%%
%table_name='algn_his'
%%%%%%%%%%
dbname = 'history_info';
username = 'root';
password = '';
driver = 'com.mysql.jdbc.Driver';
dburl = ['jdbc:mysql://localhost:3306/' dbname];
% dburl = ['jdbc:mysql://172.31.91.200:3306/' dbname];
javaclasspath('mysql-connector-java-5.1.18-bin.jar');
conn = database(dbname, username, password, driver, dburl);

commend=sprintf('INSERT INTO `%s` (`ID`, `date`, `open`, `high`, `low`, `close`, `volume`, `predict`, `pre_up`, `pre_close`, `up_margin`, `down_margin`, `up_accuracy`, `down_accuracy`, `accuracy`, `amplitude`, `pre_high`, `pre_low`) VALUES (0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0)',table_name);
exec(conn,commend);

commend=sprintf('SELECT `open` FROM `%s` WHERE 1 ORDER BY `ID` ', table_name);
cursorA = exec(conn,commend);
open=fetch(cursorA);
open=(cell2mat(open.data))';

num=length(open);
colNames={'`ID`'};
update(conn,table_name ,colNames, num, sprintf('where `ID`= "%d"', 0))

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


%% Predict high
ts2 = sh(2:m,1);%把sh矩阵第4列的2~m项赋给ts
tsx2 = sh(1:m-1,:);%把sh矩阵的1~m-1行赋给tsx

% Plot
% figure;
% plot(ts,'LineWidth',2);
% title('Apple day-high(2010.1.4-2014.3.10)','FontSize',12);
% xlabel('Time(2010.1.4-2014.3.10)','FontSize',12);
% ylabel('Day High','FontSize',12);
% grid on;

% Normalize
ts2 = ts2';
tsx2 = tsx2';
	
% normalize ts
[TS2,TSps2] = mapminmax(ts2,1,2);	%mapminmax规范化到[1,2]区间的数据

% pliot
% figure;
% plot(TS,'LineWidth',2);
% title('Apple stock day high - Normalized','FontSize',12);
% xlabel('Time(2010.1.4-2014.3.10)','FontSize',12);
% ylabel('Normalized day high','FontSize',12);
% grid on;

TS2 = TS2';
[TSX2,TSXps2] = mapminmax(tsx2,1,2);	
TSX2 = TSX2';
 
%% calculate coefficient c&g

%[bestmse,bestc,bestg] = SVMcgForRegress1(TS,TSX,-8,8,-8,8);

% print result just for testing
% disp('Print rough result');
% str = sprintf( 'Best Cross Validation MSE = %g Best c = %g Best g = %g',bestmse,bestc,bestg);
% disp(str);
% clc

[bestmse2,bestc2,bestg2] = SVMcgForRegress1(TS2,TSX2,-4,4,-4,4,3,0.5,0.5,0.05);
% disp('Print precise result');
% str = sprintf( 'Best Cross Validation MSE = %g Best c = %g Best g = %g',bestmse,bestc,bestg);
% disp(str);
% 
% clc

%% Training SVM
cmd2 = ['-c ', num2str(bestc2), ' -g ', num2str(bestg2) , ' -s 3 -p 0.01'];
model2 = svmtrain(TS2,TSX2,cmd2);

%% SVM Prediciton
[predict2,accuracy2,mse2] = svmpredict(TS2,TSX2,model2,'-b 0');
predict2 = mapminmax('reverse',predict2',TSps2);
predict2 = predict2';


%% Predict low
ts3 = sh(2:m,3);%把sh矩阵第4列的2~m项赋给ts
tsx3 = sh(1:m-1,:);%把sh矩阵的1~m-1行赋给tsx

% Plot
% figure;
% plot(ts,'LineWidth',2);
% title('Apple day-high(2010.1.4-2014.3.10)','FontSize',12);
% xlabel('Time(2010.1.4-2014.3.10)','FontSize',12);
% ylabel('Day High','FontSize',12);
% grid on;

% Normalize
ts3 = ts3';
tsx3 = tsx3';
	
% normalize ts
[TS3,TSps3] = mapminmax(ts3,1,2);	%mapminmax规范化到[1,2]区间的数据

% pliot
% figure;
% plot(TS,'LineWidth',2);
% title('Apple stock day high - Normalized','FontSize',12);
% xlabel('Time(2010.1.4-2014.3.10)','FontSize',12);
% ylabel('Normalized day high','FontSize',12);
% grid on;

TS3 = TS3';
[TSX3,TSXps3] = mapminmax(tsx3,1,2);	
TSX3 = TSX3';
 
%% calculate coefficient c&g

%[bestmse,bestc,bestg] = SVMcgForRegress1(TS,TSX,-8,8,-8,8);

% print result just for testing
% disp('Print rough result');
% str = sprintf( 'Best Cross Validation MSE = %g Best c = %g Best g = %g',bestmse,bestc,bestg);
% disp(str);
% clc

[bestmse3,bestc3,bestg3] = SVMcgForRegress1(TS3,TSX3,-4,4,-4,4,3,0.5,0.5,0.05);
% disp('Print precise result');
% str = sprintf( 'Best Cross Validation MSE = %g Best c = %g Best g = %g',bestmse,bestc,bestg);
% disp(str);
% 
% clc

%% Training SVM
cmd3 = ['-c ', num2str(bestc3), ' -g ', num2str(bestg3) , ' -s 3 -p 0.01'];
model3 = svmtrain(TS3,TSX3,cmd3);

%% SVM Prediciton
[predict3,accuracy3,mse3] = svmpredict(TS3,TSX3,model3,'-b 0');
predict3 = mapminmax('reverse',predict3',TSps3);
predict3= predict3';

% clc

close all;
%% INSERT INTO `history_info`.`goodn_his` (`ID`, `date`, `open`, `high`, `low`, `close`, `volume`, `predict`, `pre_up`, `pre_close`, `up_margin`, `down_margin`, `up_accuracy`, `down_accuracy`, `accuracy`, `amplitude`, `pre_high`, `pre_low`) VALUES ('803', NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
% str = sprintf( 'Mean Square Error = %g Relative Coefficient = %g%%',mse(2),mse(3)*100);
% disp(str);
%% Update the database
colNames={'`predict`'};
q=length(predict);
for i=1:length(predict)
    update(conn,table_name, colNames, predict(i), sprintf('where `ID`= "%d"', i+1))
end

colNames={'`close`'};
update(conn,table_name, colNames, predict(q), sprintf('where `ID`= "%d"',q+1))

colNames={'`pre_high`'};
for i=1:length(predict2)
    update(conn,table_name , colNames, predict2(i), sprintf('where `ID`= "%d"', i+1))
end

colNames={'`high`'};
update(conn,table_name, colNames, predict2(q), sprintf('where `ID`= "%d"',q+1))

colNames={'`pre_low`'};
for i=1:length(predict3)
    update(conn,table_name , colNames, predict3(i), sprintf('where `ID`= "%d"', i+1))
end

colNames={'`low`'};
update(conn,table_name, colNames, predict3(q), sprintf('where `ID`= "%d"',q+1))

error = (predict - ts')./ts';
error2 = (predict2 - ts2')./ts2';
error3 = (predict3 - ts3')./ts3';
%% plot
% handle = figure;
% set(handle,'PaperPositionMode','auto');
% set (handle,'Position',[232,246,700,250], 'color','w')
% 
% 
% subplot(121)
% hold on;
% plot(ts,'bx-');
% plot(predict,'rx-');
% legend('Original','Predict');
% hold off;
% title('Original and Predict','FontSize',12);
% xlabel('2012.1.3-Present','FontSize',12);
% ylabel('Close','FontSize',12);
% grid on;
% subplot(122)
% plot(error,'rx');
% axis([0,840,-0.15,0.15]);
% title('Relative Error','FontSize',12);
% xlabel('2012.1.3-Present','FontSize',12);
% ylabel('Relative error','FontSize',12);
% grid on;
% snapnow;
% 
% 
% figure(2)
% subplot(121)
% hold on;
% plot(ts,'bx-');
% plot(predict2,'rx-');
% legend('Original','Predict');
% hold off;
% title('Original and Predict','FontSize',12);
% xlabel('2012.1.3-Present','FontSize',12);
% ylabel('High','FontSize',12);
% grid on;
% 
% subplot(122)
% plot(error,'rx');
% axis([0,840,-0.15,0.15]);
% title('Relative Error','FontSize',12);
% xlabel('2012.1.3-Present','FontSize',12);
% ylabel('Relative error','FontSize',12);
% grid on;
% snapnow;
% 
% figure(3)
% subplot(121)
% hold on;
% plot(ts,'bx-');
% plot(predict3,'rx-');
% legend('Original','Predict');
% hold off;
% title('Original and Predict','FontSize',12);
% xlabel('2012.1.3-Present','FontSize',12);
% ylabel('Low','FontSize',12);
% grid on;
% 
% subplot(122)
% plot(error,'rx');
% axis([0,840,-0.15,0.15]);
% title('Relative Error','FontSize',12);
% xlabel('2012.1.3-Present','FontSize',12);
% ylabel('Relative error','FontSize',12);
% grid on;
% snapnow;
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



%% get the margin
clo_real=clo(1:q);
clo_real=clo_real';
if (clo_real==0)
    clo_real=1;
end
margin=((predict-clo_real)./clo_real)*100;
colNames={'`amplitude`'};
for i=1:length(margin)
  update(conn, table_name , colNames, margin(i), sprintf('where `ID`= "%d"', i+1))
end
%% get the accuracy
accuracy = (1-abs(error)).*100;
final_accuracy=sum(accuracy(1:300))/300;

colNames={'`accuracy`'};
for i=1:length(accuracy)-1
   update(conn, table_name , colNames, accuracy(i), sprintf('where `ID`= "%d"', i+1))
end

update(conn, table_name , colNames, final_accuracy, sprintf('where `ID`= "%d"', length(accuracy)+1))


%close all;

% stock_name=strcat(table_name,'_Short.png');
% filename=strcat('/Applications/XAMPP/xamppfiles/htdocs/Pictures/',stock_name);
% print(handle,'-dpng',filename);
% close all;
