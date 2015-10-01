clear all
close all
clc
%%
%get the data from database
dbname = 'history_info';
username = 'root';
password = '';
driver = 'com.mysql.jdbc.Driver';
dburl = ['jdbc:mysql://localhost:3306/' dbname];
% dburl = ['http://76.117.237.112/phpmyadmin' dbname];

javaclasspath('mysql-connector-java-5.1.18-bin.jar');
conn = database(dbname, username, password, driver, dburl);


cursorA = exec(conn,'SELECT `close` FROM `table 2` WHERE 1');
Original=fetch(cursorA);
Original=(cell2mat(Original.data))';

%%
%do the prediction
[~,N]=size(Original);
Pridiction=zeros(1,N);
Difference=zeros(1,N);
% use 10 data to predict
for i=1:N-30
    
    t=1:30;
    Price_tmp=Original(i:i+29);
    P=polyfit(t,Price_tmp,3);
    t_tmp=1:31;
    Func=polyval(P,t_tmp);
    
    Pridiction(i+30)=Func(31);
end

t=1:N;
figure
plot(t,Original,'r',t,Pridiction,'b');

Difference(21:N)=Pridiction(21:N)-Original(21:N);
Difference(21:N)=Difference(21:N)./Original(21:N);
figure
plot(t,Difference,'rx-');
grid on;



%%
%write the data to the database
colNames={'predict'};


for i=1:length(Pridiction)
    Prediction_c={Pridiction(i)};
    update(conn, '`table 2`', colNames, Prediction_c, sprintf('where `ID`= "%d"', i))
end





