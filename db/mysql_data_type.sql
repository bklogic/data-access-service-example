use basic;
drop table if exists mysql_data_type;
create table mysql_data_type
( 
	id mediumint not null auto_increment
,	last_update_time datetime DEFAULT current_timestamp
, c_char char(30) null 
, c_varchar varchar(30) null 
, c_text text null 
, c_tinytext tinytext null 
, c_mediumtext mediumtext null 
, c_longtext longtext null 
, c_int int(10) null 
, c_tinyint tinyint(3) null 
, c_smallint smallint(5) null 
, c_mediumint mediumint(7) null 
, c_bigint bigint(19) null 
, c_float float(12) null 
, c_double double null 
, c_decimal decimal(15, 5) null 
, c_date date null 
, c_datetime datetime null 
, c_timestamp timestamp null
, c_blob blob null 
, c_tinyblob tinyblob null 
, c_mediumblob mediumblob null 
, c_longblob longblob null 
,  primary key(id)
);
insert into mysql_data_type (
	c_char,
	c_varchar,
	c_text,
	c_tinytext,
	c_mediumtext,
	c_longtext,
	c_int,
	c_tinyint,
	c_smallint,
	c_mediumint,
	c_bigint,
	c_float,
	c_double,
	c_decimal,
	c_date,
	c_datetime,
	c_timestamp,
	c_blob,
	c_tinyblob,
	c_mediumblob,
	c_longblob
)
VALUES (
	'CHAR',
	'VARIABLE CHAR',
	'TEXT',
	'TINY TEXT',
	'MEDIUM TEXT',
	'LONG TEXT....REALLY?',
	123,
	12,
	1234,
	12345,
	123456,
	1.234,
	.123456,
	1234.567,
	CURRENT_DATE,
	CURRENT_TIMESTAMP,
	CURRENT_TIMESTAMP,
	'blob',
	'tiny blob',
	'medium blob',
	'long blob'
)
;

