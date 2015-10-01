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
%()'ת��Ϊת�þ���
%%
%do the prediction
[~,N]=size(Original);%����N=Original
Pridiction=zeros(1,N);%x0=zeros(1,N):����һ��1��N�е�0��������x0=zeros(1,5),��x0Ϊ[0 0 0 0 0]
Difference=zeros(1,N);
% use 10 data to predict
for i=1:N-30
    
    t=1:30;%�൱��t=1:1:30
    Price_tmp=Original(i:i+29);
    P=polyfit(t,Price_tmp,3);
%    ����ʽ������ϣ�a=polyfit(xdata,ydata,n)������n��ʾ����ʽ����߽�����
%    xdata��ydataΪ��Ҫ��ϵ����ݣ�����������ķ�ʽ���롣
%    �������aΪ��϶���ʽ y=a1x^n+...+anx+a,��n+1��ϵ����
%    ���ӣ�x = (0: 0.1: 2.5);
%          y = erf(x);һ�����Ӻ���
%          p = polyfit(x,y,6)
%          p =0.0084 -0.0983 0.4217 -0.7435 0.1471 1.1064 0.0004
%          ��y=0.0084x^6-0.0983x^5+0.4217x^4-0.7435x^3+0.1471x^2+1.1064x+0.0004
    t_tmp=1:31;
    Func=polyval(P,t_tmp);
%     ������x���ݵ�Ķ���ʽֵ
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
%axis([31,N-10,-0.3,0.3]);%������


%%
%write the data to the database
colNames={'predict'};
for i=1:length(Pridiction)
    Prediction_c={Pridiction(i)};
    update(conn, '`table 2`', colNames, Prediction_c, sprintf('where `ID`= "%d"', i))
end
% �������ݿ��е����ݡ���update �������ø�ʽ��update(conna,��tab��,colnames,exdata,��whereclause��)
% 
% conna�������Ӷ��󡡡�tab�������ݿ��ļ��ı�������colnames�������ݿ�����������exdata����matlab��������whereclause����SQL��where�־�
% 
% �磺update(conna,'try',{'a1', 'a2'},[45 65],��where XX=��XX����)
% 
% commit(conna)%ȷ�����ݸ���

close(conn)



