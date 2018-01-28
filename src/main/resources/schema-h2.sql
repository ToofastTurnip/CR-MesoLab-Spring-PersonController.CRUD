DROP TABLE PERSON;

CREATE TABLE MAJOR (
ID NUMBER (10, 0) NOT NULL AUTO_INCREMENT,
MAJOR_NAME VARCHAR2(255) DEFAULT NULL,
PRIMARY KEY(ID));

CREATE TABLE PERSON (
ID NUMBER(10,0) NOT NULL AUTO_INCREMENT,
FIRST_NAME VARCHAR2(255) DEFAULT NULL,
LAST_NAME VARCHAR2(255) DEFAULT NULL,
MAJOR_ID NUMBER(10, 0) DEFAULT NULL,
PRIMARY KEY (ID),
FOREIGN KEY (MAJOR_ID) REFERENCES MAJOR (ID));

DROP SEQUENCE hibernate_sequence;

CREATE SEQUENCE hibernate_sequence;
