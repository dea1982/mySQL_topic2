/*
���� 02
������� 01
���������� ���� MySQL. �������� � �������� ���������� ���� .my.cnf, ����� � ��� ����� � ������,
������� ���������� ��� ���������.
*/
[mysql]
user=root
password=Tiesto82

-- ���� .my.cnf �������� ��������.

/*
���� 02
������� 02
�������� ���� ������ example, ���������� � ��� ������� users, ��������� �� ���� ��������, ��������� id
 � ���������� name.
*/

create database example;

use example;

drop table if exists users;
create table users (
	id serial primary key,
	name varchar(255)
);

/*
���� 02
������� 03
�������� ���� ���� ������ example �� ����������� �������, ���������� ���������� ����� � ����� ���� ������ sample.
*/

C:\Program Files\MySQL\MySQL Server 5.7\bin\mysqldump.exe --routines --add-drop-table --disable-keys --extended-insert -v --host=localhost --port=3306 -u root example
������� ������� � Fri Nov 08 11:52:36 GMT+05:00 2019
-- Connecting to localhost...
-- Retrieving table structure for table users...
-- Sending SELECT query...
-- Retrieving rows...
-- Disconnecting from localhost...
������� �������� � Fri Nov 08 11:52:36 GMT+05:00 2019

create database sample;

use sample;

C:\Program Files\MySQL\MySQL Server 5.7\bin\mysql.exe --no-beep --host=localhost --port=3306 -u root sample
������ ���� ������ ������� � Fri Nov 08 11:54:51 GMT+05:00 2019
������ ���� ������ �������� � Fri Nov 08 11:54:51 GMT+05:00 2019