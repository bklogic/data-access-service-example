# create database basic
DROP DATABASE IF EXISTS `basic`; 
CREATE DATABASE /*!32312 IF NOT EXISTS*/`basic` /*!40100 DEFAULT CHARACTER SET latin1 */;

# create database classicmodels
DROP DATABASE IF EXISTS `classicmodels`; 
CREATE DATABASE /*!32312 IF NOT EXISTS*/`classicmodels` /*!40100 DEFAULT CHARACTER SET latin1 */;

# create user "backlogic"
DROP USER IF EXISTS 'backlogic'@'%';
CREATE USER 'backlogic'@'%' IDENTIFIED BY 'backlogic';
GRANT ALL PRIVILEGES ON basic.* TO 'backlogic'@'%';
GRANT ALL PRIVILEGES ON classicmodels.* TO 'backlogic'@'%';
