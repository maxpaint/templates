select * from dba_users;

ALTER USER HR IDENTIFIED BY hr;

ALTER USER system IDENTIFIED BY system;

/*HR SCHEMA*/
/*HR
hr
jdbc:oracle:thin:@localhost:1521/orcl12*/

jdbc:oracle:thin:@localhost:1521/orcl12
DEV1_OWNER
dev1

jdbc:oracle:thin:@localhost:1521/orcl12
DEV1_USER
dev1_user


http://www.techonthenet.com/oracle/schemas/create_schema.php
1) STEP 1 - CREATE A NEW USER IN ORACLE

DROP USER DEV1_OWNER CASCADE;

CREATE TEMPORARY TABLESPACE temp_tbs_dev_1
TEMPFILE 'temp_tbs_dev_1.dbf'
SIZE 5M
AUTOEXTEND ON;

CREATE TABLESPACE tbs_dev_1
DATAFILE 'tbs_dev_1.dat'
SIZE 10M
REUSE
AUTOEXTEND ON NEXT 10M MAXSIZE 200M;

CREATE UNDO TABLESPACE undo_tbs_dev_01
DATAFILE 'undo_tbs_dev_01.f'
SIZE 5M
AUTOEXTEND ON
RETENTION GUARANTEE;


CREATE USER DEV1_OWNER
IDENTIFIED BY dev1
DEFAULT TABLESPACE tbs_dev_1
TEMPORARY TABLESPACE temp_tbs_dev_1
QUOTA 50M on tbs_dev_1;

2) ASSIGN SYSTEM PRIVILEGES TO NEW USER IN ORACLE
GRANT create session TO DEV1_OWNER;
GRANT create table TO DEV1_OWNER;
GRANT create view TO DEV1_OWNER;
GRANT create any trigger TO DEV1_OWNER;
GRANT create any procedure TO DEV1_OWNER;
GRANT create sequence TO DEV1_OWNER;
GRANT create synonym TO DEV1_OWNER;


3) STEP 1 - CREATE A NEW READ USER IN ORACLE

DROP USER DEV1_USER CASCADE;

CREATE TABLESPACE tbs_dev_user_1
DATAFILE 'tbs_dev_user_1.dat'
SIZE 10M
REUSE
AUTOEXTEND ON NEXT 10M MAXSIZE 200M;

CREATE TEMPORARY TABLESPACE temp_tbs_dev_user_1
TEMPFILE 'temp_tbs_dev_user_1.dbf'
SIZE 5M
AUTOEXTEND ON;

CREATE UNDO TABLESPACE undo_tbs_dev_user_01
DATAFILE 'undo_tbs_dev_user_01.f'
SIZE 5M
AUTOEXTEND ON
RETENTION GUARANTEE;


CREATE USER DEV1_USER
IDENTIFIED BY dev1_user
DEFAULT TABLESPACE tbs_dev_user_1
TEMPORARY TABLESPACE temp_tbs_dev_user_1
QUOTA 50M on tbs_dev_user_1;

4) ASSIGN SYSTEM PRIVILEGES TO NEW USER IN ORACLE
GRANT create session TO DEV1_USER;
GRANT create table TO DEV1_USER;
GRANT create view TO DEV1_USER;
GRANT create any trigger TO DEV1_USER;
GRANT create any procedure TO DEV1_USER;
GRANT create sequence TO DEV1_USER;
GRANT create synonym TO DEV1_USER;
