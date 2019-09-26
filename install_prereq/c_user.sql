DEFINE DEMO_USER=&1

CREATE USER &DEMO_USER IDENTIFIED BY &DEMO_USER
DEFAULT TABLESPACE "USERS"
TEMPORARY TABLESPACE "TEMP";

-- SYSTEM PRIVILEGES
GRANT CREATE SESSION TO &DEMO_USER ;
GRANT ALTER SESSION TO &DEMO_USER ;
GRANT CREATE TABLE TO &DEMO_USER ;
GRANT CREATE TYPE TO &DEMO_USER ;
GRANT CREATE SEQUENCE TO &DEMO_USER ;
GRANT CREATE VIEW TO &DEMO_USER ;
GRANT UNLIMITED TABLESPACE TO &DEMO_USER ;
GRANT CREATE PROCEDURE TO &DEMO_USER ;
GRANT EXECUTE ON UTL_File TO &DEMO_USER ;
GRANT ALL ON DIRECTORY input_dir TO &DEMO_USER ;

GRANT SELECT ON v_$database to &DEMO_USER;