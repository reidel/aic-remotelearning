CREATE DATABASE ownclouddb;
CREATE USER 'ownclouduser'@'localhost' IDENTIFIED BY 'aicowncloud';
GRANT ALL PRIVILEGES ON ownclouddb.* TO 'ownclouduser'@'localhost';
FLUSH PRIVILEGES;