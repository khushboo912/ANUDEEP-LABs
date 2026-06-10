mysql> create database Bankaccount;
Query OK, 1 row affected (0.01 sec)

mysql> use Bankaccount;
Database changed
create table bank_detail(account_ID varchar(30) not null primary key,holder_name varchar(40) not null,balance double not null);
Query OK, 0 rows affected (0.07 sec)

mysql> alter table bank_detail rename to bank_account;
Query OK, 0 rows affected (0.05 sec)

mysql> select*from bank_account;
Empty set (0.01 sec)

mysql> insert into bank_account values('AC101','Kashmira',800000),
    -> ('AC102','Karan',800000),
    -> ('AC103','araman',20000),
    -> ('AC104','arhan',30000);
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select*from bank_account;
+------------+-------------+---------+
| account_ID | holder_name | balance |
+------------+-------------+---------+
| AC101      | Kashmira    |  800000 |
| AC102      | Karan       |  800000 |
| AC103      | araman      |   20000 |
| AC104      | arhan       |   30000 |
+------------+-------------+---------+
4 rows in set (0.00 sec)
mysql> SELECT holder_name, balance
    -> FROM bank_account
    -> WHERE balance <= 30000;
+-------------+---------+
| holder_name | balance |
+-------------+---------+
| araman      |   20000 |
| arhan       |   30000 |
+-------------+---------+
2 rows in set (0.00 sec)
mysql> UPDATE bank_account
    -> SET balance = 900000
    -> WHERE account_ID = 'AC101';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select*from bank_account;
+------------+-------------+---------+
| account_ID | holder_name | balance |
+------------+-------------+---------+
| AC101      | Kashmira    |  900000 |
| AC102      | Karan       |  800000 |
| AC103      | araman      |   20000 |
| AC104      | arhan       |   30000 |
+------------+-------------+---------+
4 rows in set (0.00 sec)
