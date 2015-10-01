Copyright: Haotian Zhu, Rutgers University, Group#1 in 2015 SE2


----------------------Development Environment----------------------
OS: Windows 8
CPU: Core i7
Complier: Matlab 2014b, XAMPP (PHP)
Server: Apache
(Our project needs XAMPP, Please intall first)

----------------------How to Run-----------------------------------
1. Turn on the apache and mysql in XAMPP
2. Put all script file in XAMPP/htdocs
3. Put the database and the data into the Mysql
4. Open your explore, go to localhost/index.php

----------------------Directory instruction------------------------
+-------->data(data in the database)
|		  |
|         +------>cur_info(data in database)
|		  |
|         +------>his_info(data in database)
|		  |
|         +------>name_info(data in database)
|		  |
|         +------>user_info(data in database)
|    
+---------->database_table(tables structure)    
|    
|    
+---------->get_data(PHP script for data collecting)  
|		  |
|         +------>getcur_info(get the current data)
|		  |
|         +------>gethis_info(get the history info)
|		  
+---------->website(website folder, contain icon, html, js and anything related with website display )	
|
|	
|
+---------->app_android(android application)
|	
|	
|	
+----------->calculate_data(matlab program for calculate the data)				
