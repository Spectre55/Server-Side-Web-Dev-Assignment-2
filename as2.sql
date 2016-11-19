-- create and select the database
DROP DATABASE IF EXISTS Schedule_DB;
CREATE DATABASE Schedule_DB;
USE Schedule_DB;  -- MySQL command

-- create the tables
CREATE TABLE semester(
  semesterTerm     VARCHAR(55)   NOT NULL,
  semesterCode      NUMERIC(55)  NOT NULL IDENTITY(1,1) PRIMARY KEY,
);
CREATE TABLE subjectsList (
  subjectName      VARCHAR(55)  NOT NULL,
  subjectCode      VARCHAR(10)  NOT NULL   PRIMARY KEY,
  semesterCode     VARCHAR(55)  NOT NULL,
  semesterNum      NUMERIC(55)  NOT NULL,
);

CREATE TABLE classLists (
  subjectCode      VARCHAR(10)    NOT NULL,
  classNumber      Numeric(11)    NOT NULL,
  className        VARCHAR(55)    NOT NULL,
  classCredits     Numeric(11)    NOT NULL,
  classDescrip     VARCHAR(55)    NOT NULL,
  classCrn         Numeric(11)    NOT NULL UNIQUE,
  classSection     Numeric(11)    NOT NULL,
  classDay         VARCHAR(10)    NOT NULL,
  classTime        VARCHAR(55)    NOT NULL,
  classLocation    VARCHAR(10)    NOT NULL,
  classTeacher     VARCHAR(55)    NOT NULL,
  classDates       VARCHAR(10)    NOT NULL,
  semesterCode     NUmeric(55)    NOT NULL,

  PRIMARY KEY (semesterCode)
);

SELECT DISTINCT subjectsList.subjectName, subjectsList.subjectCode FROM semesterTerm INNER JOIN 
subjectsList ON subjectsList.semesterNum = @ghg


SELECT DISTINCT ClassYo *  FROM subjectsList  INNER JOIN subjectsList ON ClassYo.subjectCode = @cla



-- insert data into the database
INSERT INTO semester (semesterTerm) VALUES
('Summer Semester 2016'),
('Fall Semester   2016'),
('Spring Semester 2017');


INSERT INTO subjectsList (subjectName,subjectCode,semesterCode,semesterNum) VALUES
('Computer Science','CPSC','fs','2'),
('Math', 'MATH','sp','1';





INSERT INTO classList (subjectCode,classNumber,className,classCredits
,classDescrip,classCrn,classSection,classDay,classTime,classLocation,classTeacher,classDates,semesterCode) VALUES
('CPSC','1301','Computer Science 1','3','This course includes an overview of computers and programming','20501','1','MW','04:30PM-05:45PM','CCT-407','Zanev,Vladimir','01/11-05/02','ss6'),
('CPSC','1302','Computer Science 2','3',' A continuation of CPSC 1301.','20502','1','MW','05:30PM-05:45PM','CCT-408','chouchane,Mohamamed','01/11-05/02','ss6'),
('CPSC','2108','Data Structures'   ,'3','This course extends the concepts of primitive data types','20503','1','MW','01:30PM-02:45PM','CCT-406','Hodhod,Rania','01/11-05/02','ss6'),
('MATH','1333','Calculus','3','Learning Math','20512','1','TR','04:30PM-05:45PM','CCT-307','Lee,Suk','01/11-05/02','ss6'),
('MATH','1334','Calculus 2','3','Learning More Math','20542','1','MW','04:30PM-05:45PM','CCT-207','Lee,Suk','01/11-05/02','ss6');

subjects
INSERT INTO subjectsList(subjectName,subjectCode,semesterCode,semesterNum)VALUES('Computer Science','CPSC','fs','1');
INSERT INTO subjectsList(subjectName,subjectCode,semesterCode,semesterNum)VALUES('Math','MATH','sp','1');
INSERT INTO subjectsList(subjectName,subjectCode,semesterCode,semesterNum)VALUES('Math','MATH','fs','2');
INSERT INTO subjectsList(subjectName,subjectCode,semesterCode,semesterNum)VALUES('Computer Science','CPSC','su','2');
INSERT INTO subjectsList(subjectName,subjectCode,semesterCode,semesterNum)VALUES('Math','MATH','sp','3');
INSERT INTO subjectsList(subjectName,subjectCode,semesterCode,semesterNum)VALUES('Computer Science','CPSC','sp','3');


SELECT DISTINCT ClassYo.subjectCode, ClassYo.classNumber, ClassYo.className, ClassYo.classCredits, ClassYo.classDescrip, ClassYo.classCrn, ClassYo.classSection, ClassYo.classDay, ClassYo.classTime, ClassYo.classLocation, ClassYo.classTeacher, ClassYo.classDates FROM ClassYo INNER JOIN subjectsList ON ClassYo.subjectCode = @ll
-- create the users and grant priveleges to those users



**********************************************************************
Querys
****************************************************************************



SELECT DISTINCT 
                         ClassYo.subjectCode, ClassYo.classNumber, ClassYo.className, ClassYo.classCredits, ClassYo.classDescrip, ClassYo.classCrn, ClassYo.classSection, 
                         ClassYo.classDay, ClassYo.classTime, ClassYo.classLocation, ClassYo.classTeacher, ClassYo.classDates
FROM            ClassYo INNER JOIN
                         subjectsList ON ClassYo.subjectCode AND  LIKE @ll
						 
						 
INSERT INTO ClassYo(subjectCode,classNumber,className,classCredits
,classDescrip,classCrn,classSection,classDay,classTime,classLocation,classTeacher,classDates,semesterCode) VALUES
('CPSC','1301','Computer Science 1','3','This course includes an overview of computers and programming','20501','1','MW','04:30PM-05:45PM','CCT-407','Zanev,Vladimir','08/11/2016-12/05/2016','1');






SELECT DISTINCT 
                         ClassYo.subjectCode, ClassYo.classNumber, ClassYo.className, ClassYo.classCredits, ClassYo.classDescrip, ClassYo.classCrn, ClassYo.classSection, 
                         ClassYo.classDay, ClassYo.classTime, ClassYo.classLocation, ClassYo.classTeacher, ClassYo.classDates
FROM            ClassYo INNER JOIN
                         subjectsList ON ClassYo.subjectCode LIKE @ll INNER JOIN
                         semesterTerm ON semesterTerm.semesterCode LIKE 
						 				 
						 
						 
SELECT DISTINCT 
                         ClassYo.subjectCode, ClassYo.classNumber, ClassYo.className, ClassYo.classCredits, ClassYo.classDescrip, ClassYo.classCrn, ClassYo.classSection, 
                         ClassYo.classDay, ClassYo.classTime, ClassYo.classLocation, ClassYo.classTeacher, ClassYo.classDates
FROM            ClassYo INNER JOIN
                         subjectsList ON ClassYo.subjectCode LIKE @ll INNER JOIN
                         semesterTerm ON semesterTerm.semesterCode LIKE @j
						 
		 
works so far						 
SELECT DISTINCT 
                         ClassYo.subjectCode, ClassYo.classNumber, ClassYo.className, ClassYo.classCredits, ClassYo.classDescrip, ClassYo.classCrn, ClassYo.classSection, 
                         ClassYo.classDay, ClassYo.classTime, ClassYo.classLocation, ClassYo.classTeacher, ClassYo.classDates
FROM            ClassYo INNER JOIN
                         ClassYo AS ClassYo_1 ON ClassYo.semesterCode LIKE @j INNER JOIN
                         subjectsList ON ClassYo.subjectCode LIKE @ll
						 
						 
						 
						 

String or binary data would be truncated.

SELECT DISTINCT subjectsList.subjectName, subjectsList.subjectCode FROM semesterTerm 
INNER JOIN subjectsList ON subjectsList.semesterNum = @ghg

SELECT        ClassYo.subjectCode, ClassYo.classNumber, ClassYo.className, ClassYo.classCredits, ClassYo.classDescrip, ClassYo.classCrn, ClassYo.classSection, 
                         ClassYo.classDay, ClassYo.classTime, ClassYo.classLocation, ClassYo.classTeacher, ClassYo.classDates
FROM            ClassYo INNER JOIN
                         subjectsList ON subjectsList.subjectCode LIKE @ggg
						 
						 
						 
						 
SELECT        ClassYo.subjectCode, ClassYo.classNumber, ClassYo.className, ClassYo.classCredits, ClassYo.classDescrip, ClassYo.classCrn, ClassYo.classSection, 
                         ClassYo.classDay, ClassYo.classTime, ClassYo.classLocation, ClassYo.classTeacher, ClassYo.classDates
FROM            ClassYo CROSS JOIN
                         subjectsList
WHERE        (subjectsList.subjectCode = @fff) AND (ClassYo.subjectCode = @ll)
