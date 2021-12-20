create user sergey with password 'admin123';
create database create_db with owner = sergey encoding 'UTF8';
grant all privileges on database create db to sergey;