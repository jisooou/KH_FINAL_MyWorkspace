CREATE USER C##WORKS IDENTIFIED BY 1234;

GRANT RESOURCE, CONNECT TO C##WORKS; 

ALTER USER C##WORKS DEFAULT TABLESPACE USERS QUOTA UNLIMITED ON USERS;