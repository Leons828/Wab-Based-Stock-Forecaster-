function delete_null(table_name)
%%
%table_name='prxl_his'
%%%%%%%%%%
dbname = 'history_info';
username = 'root';
password = '';
driver = 'com.mysql.jdbc.Driver';
dburl = ['jdbc:mysql://localhost:3306/' dbname];
% dburl = ['jdbc:mysql://172.31.91.200:3306/' dbname];
javaclasspath('mysql-connector-java-5.1.18-bin.jar');
conn = database(dbname, username, password, driver, dburl);

commend=sprintf('DELETE FROM `%s` WHERE date=0000-00-00',table_name);
exec(conn,commend);

end