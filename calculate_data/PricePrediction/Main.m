%% 
clear all
close all
clc

%% This is the final test file
% run it only once
% takes a long time 
% The system will process stock one by one
% For each stock, it will do short term first then long term


warning off;
%% Processing

dbname = 'history_info';
username = 'root';
password = '';
table_name='table 51';
driver = 'com.mysql.jdbc.Driver';
 dburl = ['jdbc:mysql://localhost:3306/' dbname];
% dburl = ['jdbc:mysql://http://172.31.121.215:3306/' dbname];
javaclasspath('mysql-connector-java-5.1.18-bin.jar');
conn = database(dbname, username, password, driver, dburl);

commend=sprintf('SELECT `COL 1` FROM `%s` WHERE 1 ', table_name);
cursorA = exec(conn,commend);
Name=fetch(cursorA);
Name=char(Name.data);

[Number,length]=size(Name);
%% Start simulation
for i=4:Number
    table_name=Name(i,:);
    %Name pre-processing
    if (table_name(length)==' ')
        for j=1:length
            if (table_name(j)==' ')
                break;
            end
        end
    else
        j=length+1;
    end
    
    delete_null(table_name(1:j-1));
    long_term(table_name(1:j-1));
    short_term(table_name(1:j-1));

    short_term(table_name(1:j-1));
    
    short_term(table_name(1:j-1));
    short_term(table_name(1:j-1));
    
    short_term(table_name(1:j-1));
    short_term(table_name(1:j-1));
    
    short_term(table_name(1:j-1));
    short_term(table_name(1:j-1));
    
    short_term(table_name(1:j-1));
    short_term(table_name(1:j-1));
   
end
close(conn)
