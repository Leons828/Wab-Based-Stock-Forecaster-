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


cursorA = exec(conn,'SELECT `close ` FROM `table 2` WHERE 1');
Original=fetch(cursorA);
Original=(cell2mat(Original.data))';
%Convert the contents of a cell array into a single matrix.
%()'转换为转置矩阵
%%
%do the prediction
[~,N]=size(Original);%即令N=Original
Pridiction=zeros(1,N);%x0=zeros(1,N):产生一个1行N列的0矩阵。例如x0=zeros(1,5),则x0为[0 0 0 0 0]
Difference=zeros(1,N);
% use 10 data to predict
for i=1:N-30
    
    t=1:30;%相当于t=1:1:30
    Price_tmp=Original(i:i+29);
    P=polyfit(t,Price_tmp,3);
%    多项式函数拟合：a=polyfit(xdata,ydata,n)，其中n表示多项式的最高阶数，
%    xdata，ydata为将要拟合的数据，它是用数组的方式输入。
%    输出参数a为拟合多项式 y=a1x^n+...+anx+a,共n+1个系数。
%    例子：x = (0: 0.1: 2.5);
%          y = erf(x);一个复杂函数
%          p = polyfit(x,y,6)
%          p =0.0084 -0.0983 0.4217 -0.7435 0.1471 1.1064 0.0004
%          则y=0.0084x^6-0.0983x^5+0.4217x^4-0.7435x^3+0.1471x^2+1.1064x+0.0004
    t_tmp=1:31;
    Func=polyval(P,t_tmp);
%     计算在x数据点的多项式值
%     A=polyfit(x,y,2);
%     z=polyval(A,x);
      
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
%axis([31,N-10,-0.3,0.3]);%坐标轴


%%
%write the data to the database
colNames={'predict'};
for i=1:length(Pridiction)
    Prediction_c={Pridiction(i)};
    update(conn, '`table 2`', colNames, Prediction_c, sprintf('where `ID`= "%d"', i))
end
% 更新数据库中的数据——update 　　调用格式：update(conna,’tab’,colnames,exdata,’whereclause’)
% 
% conna——链接对象　　tab——数据库文件的表名　　colnames——数据库表的列名　　exdata——matlab变量　　whereclause——SQL的where字句
% 
% 如：update(conna,'try',{'a1', 'a2'},[45 65],’where XX=’XX’’)
% 
% commit(conna)%确认数据更改

close(conn)



