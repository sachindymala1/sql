CREATE DATABASE DEMO12;


CREATE TABLE STUDENT(SID INT  PRIMARY KEY, SNAME VARCHAR(255),MARKS INT,SECTION VARCHAR(20), DOB INT);
 


CREATE TABLE TEACHER(TID INT PRIMARY KEY,TNAME VARCHAR(255),SUBJECT VARCHAR(25),DATEOFJOIN INT);



CREATE TABLE DEPARTMENTS(DID INT PRIMARY KEY,DNAME VARCHAR(255));

SELECT * FROM STUDENT;



INSERT INTO STUDENT values(1,'ABC',329,'A',21),(3,'ram',432,'C',16);



SELECT * FROM STUDENT WHERE MARKS>400;



SELECT SNAME AS STUDENT_NAME FROM STUDENT WHERE SID=1;


SELECT DISTINCT ID  FROM STUDENT;



SELECT * FROM STUDENT S,TEACHER T  WHERE S.DID=1 ;



SELECT * FROM STUDENT S,TEACHER T WHERE S.DID=(SELECT DID FROM DEPARTMENTS WHERE DNAME='CSE');



