# create database basic
DROP DATABASE IF EXISTS `basic`; 
CREATE DATABASE /*!32312 IF NOT EXISTS*/`basic` /*!40100 DEFAULT CHARACTER SET latin1 */;

# create database classicmodel
DROP DATABASE IF EXISTS `classicmodels`; 
CREATE DATABASE /*!32312 IF NOT EXISTS*/`classicmodels` /*!40100 DEFAULT CHARACTER SET latin1 */;

# create user
# create user "prst"
DROP USER IF EXISTS 'prst'@'%';
CREATE USER 'prst'@'%' IDENTIFIED BY 'prst';
GRANT ALL PRIVILEGES ON basic.* TO 'prst'@'%';
GRANT ALL PRIVILEGES ON classicmodels.* TO 'prst'@'%';

