mysql> create database student_info;
Query OK, 1 row affected (0.14 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| bankaccount        |
| ecommerce          |
| information_schema |
| mysql              |
| performance_schema |
| sakila             |
| student_info       |
| sys                |
| world              |
+--------------------+
9 rows in set (0.08 sec)

mysql> use student_info;
Database changed
mysql> create table student(stud_ID varchar(20) not null primary key ,firstname varchar(20) not null,lastname varchar(20) not null,age int not null,phone_no int not null,address varchar(50) not null);
Query OK, 0 rows affected (0.10 sec)
mysql> insert into student values('s101','komal','Yadav',23,88500,'Bhandup'),
    -> ('s102','Abhishek','Sharma',23,88500,'Bhandup'),
    -> ('s103','Abhishek','Jain',27,88220,'Mulund'),
    -> ('s104','karan','kundra',22,77500,'Mumra'),
    -> ('s105','Jay','Bhanushali',21,50087,'badlapur');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0
mysql> select*from student order by lastname;
+---------+-----------+------------+-----+----------+----------+
| stud_ID | firstname | lastname   | age | phone_no | address  |
+---------+-----------+------------+-----+----------+----------+
| s105    | Jay       | Bhanushali |  21 |    50087 | badlapur |
| s103    | Abhishek  | Jain       |  27 |    88220 | Mulund   |
| s104    | karan     | kundra     |  22 |    77500 | Mumra    |
| s102    | Abhishek  | Sharma     |  23 |    88500 | Bhandup  |
| s101    | komal     | Yadav      |  23 |    88500 | Bhandup  |
+---------+-----------+------------+-----+----------+----------+
5 rows in set (0.00 sec)