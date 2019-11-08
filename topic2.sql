/*
Урок 02
Задание 01
Установите СУБД MySQL. Создайте в домашней директории файл .my.cnf, задав в нем логин и пароль,
который указывался при установке.
*/
[mysql]
user=root
password=Tiesto82

-- файл .my.cnf приложен отдельно.

/*
Урок 02
Задание 02
Создайте базу данных example, разместите в ней таблицу users, состоящую из двух столбцов, числового id
 и строкового name.
*/

create database example;

use example;

drop table if exists users;
create table users (
	id serial primary key,
	name varchar(255)
);

/*
Урок 02
Задание 03
Создайте дамп базы данных example из предыдущего задания, разверните содержимое дампа в новую базу данных sample.
*/

C:\Program Files\MySQL\MySQL Server 5.7\bin\mysqldump.exe --routines --add-drop-table --disable-keys --extended-insert -v --host=localhost --port=3306 -u root example
Экспорт запущен в Fri Nov 08 11:52:36 GMT+05:00 2019
-- Connecting to localhost...
-- Retrieving table structure for table users...
-- Sending SELECT query...
-- Retrieving rows...
-- Disconnecting from localhost...
Экспорт закончен в Fri Nov 08 11:52:36 GMT+05:00 2019

create database sample;

use sample;

C:\Program Files\MySQL\MySQL Server 5.7\bin\mysql.exe --no-beep --host=localhost --port=3306 -u root sample
Импорт базы данных запущен в Fri Nov 08 11:54:51 GMT+05:00 2019
Импорт базы данных закончен в Fri Nov 08 11:54:51 GMT+05:00 2019