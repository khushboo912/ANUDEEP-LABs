mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| bankaccount        |
| ecommerce          |
| ecommerce_@        |
| information_schema |
| mysql              |
| performance_schema |
| sakila             |
| student_info       |
| sys                |
| world              |
+--------------------+
10 rows in set (0.01 sec)
mysql> create database joins;
Query OK, 1 row affected (0.07 sec)

mysql> use joins;
Database changed
mysql> create table department(department_ID varchar(20) not null,department_name varchar(30) not null);
Query OK, 0 rows affected (0.26 sec)
mysql> insert into department values('DP101','HR'),
    -> ('DP102','Finance'),
    -> ('DP103','Sales'),
    -> ('DP104','IT'),
    -> ('DP105','Markating');
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0
mysql> select*from department;
+---------------+-----------------+
| department_ID | department_name |
+---------------+-----------------+
| DP101         | HR              |
| DP102         | Finance         |
| DP103         | Sales           |
| DP104         | IT              |
| DP105         | Markating       |
+---------------+-----------------+
5 rows in set (0.00 sec)
mysql> insert into employee values('e101','rahul','DP101'),
    -> ('e102','raJ','DP102'),
    -> ('e103','JAY','DP103'),
    -> ('e104','yash','DP104'),
    -> ('e105','yogesh','DP105');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select*from employee;
+-------------+---------------+---------------+
| employee_ID | employee_name | department_ID |
+-------------+---------------+---------------+
| e101        | rahul         | DP101         |
| e102        | raJ           | DP102         |
| e103        | JAY           | DP103         |
| e104        | yash          | DP104         |
| e105        | yogesh        | DP105         |
+-------------+---------------+---------------+
5 rows in set (0.00 sec)

mysql> select*from department;
+---------------+-----------------+
| department_ID | department_name |
+---------------+-----------------+
| DP101         | HR              |
| DP102         | Finance         |
| DP103         | Sales           |
| DP104         | IT              |
| DP105         | Markating       |
+---------------+-----------------+
5 rows in set (0.00 sec)
mysql> SELECT employee_name, department_name
    -> FROM employee
    -> INNER JOIN department
    -> ON employee.department_ID = department.department_ID;
+---------------+-----------------+
| employee_name | department_name |
+---------------+-----------------+
| rahul         | HR              |
| raJ           | Finance         |
| JAY           | Sales           |
| yash          | IT              |
| yogesh        | Markating       |
+---------------+-----------------+
5 rows in set (0.00 sec)
mysql> select employee_name,department_name from employee left join department on employee.department_ID=department.department_ID;
+---------------+-----------------+
| employee_name | department_name |
+---------------+-----------------+
| rahul         | HR              |
| raJ           | Finance         |
| JAY           | Sales           |
| yash          | IT              |
| yogesh        | Markating       |
+---------------+-----------------+
5 rows in set (0.00 sec)

mysql> select*from department;
+---------------+-----------------+
| department_ID | department_name |
+---------------+-----------------+
| DP101         | HR              |
| DP102         | Finance         |
| DP103         | Sales           |
| DP104         | IT              |
| DP105         | Markating       |
+---------------+-----------------+
5 rows in set (0.00 sec)

mysql> select*from employee;
+-------------+---------------+---------------+
| employee_ID | employee_name | department_ID |
+-------------+---------------+---------------+
| e101        | rahul         | DP101         |
| e102        | raJ           | DP102         |
| e103        | JAY           | DP103         |
| e104        | yash          | DP104         |
| e105        | yogesh        | DP105         |
+-------------+---------------+---------------+
5 rows in set (0.00 sec)

mysql> select employee_name,department_name from employee left join department on employee.department_ID=department.department_ID;
+---------------+-----------------+
| employee_name | department_name |
+---------------+-----------------+
| rahul         | HR              |
| raJ           | Finance         |
| JAY           | Sales           |
| yash          | IT              |
| yogesh        | Markating       |
+---------------+-----------------+
5 rows in set (0.00 sec)

mysql> select employee_name,department_name from employee right join department on employee.department_ID=department.department_ID;
+---------------+-----------------+
| employee_name | department_name |
+---------------+-----------------+
| rahul         | HR              |
| raJ           | Finance         |
| JAY           | Sales           |
| yash          | IT              |
| yogesh        | Markating       |
+---------------+-----------------+
5 rows in set (0.00 sec)

mysql> select employee_name,department_name from employee cross join department;
+---------------+-----------------+
| employee_name | department_name |
+---------------+-----------------+
| yogesh        | HR              |
| yash          | HR              |
| JAY           | HR              |
| raJ           | HR              |
| rahul         | HR              |
| yogesh        | Finance         |
| yash          | Finance         |
| JAY           | Finance         |
| raJ           | Finance         |
| rahul         | Finance         |
| yogesh        | Sales           |
| yash          | Sales           |
| JAY           | Sales           |
| raJ           | Sales           |
| rahul         | Sales           |
| yogesh        | IT              |
| yash          | IT              |
| JAY           | IT              |
| raJ           | IT              |
| rahul         | IT              |
| yogesh        | Markating       |
| yash          | Markating       |
| JAY           | Markating       |
| raJ           | Markating       |
| rahul         | Markating       |
+---------------+-----------------+
25 rows in set (0.00 sec)

