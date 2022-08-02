-- SQL FILE TO INSERT DATA IN DATABASE school_system

-- File Name       : insert_data.sql
-- DATABASE        : school_system
-- Author          : Dipanshu Ranga (@dip-beryl)
-- Organization    : Beryl Systems Pvt. Ltd.



-- INSERT VALUES IN family
INSERT INTO family
VALUES
    (DEFAULT, 'CHAND', 'KISHORE', 'USHA', 'RANI', '9899717763', NULL,  'SGM NAGAR'),
    (DEFAULT, 'RAVI', 'VIRMANI', 'ASHA', 'VIRMNAI', '9899755556', NULL, 'NIT 2'),
    (DEFAULT, 'VIJAY', 'SHARMA', 'ANJALI', 'SHARMA', '8273749187', NULL,  'Rahul Colony'),
    (DEFAULT, 'RAM', 'LAL', NULL, NULL, '9898989836', NULL, 'Aggarwal Colony'),
    (DEFAULT, 'KATRINA', NULL, NULL, NULL, '9162735282', NULL,  'SECTOR 11'),
    (DEFAULT, 'PARDEEP', 'CHHABRA', 'ANITA', 'CHHABRA', '7838298374', '8783726178', 'DELHI'),
    (DEFAULT, 'SURAJ', 'ARORA', 'SUMAN', 'ARORA', '8782738289', '8672671698',  'Faridabad'),
    (DEFAULT, 'SYAM', 'GUPTA', 'PRIYA', 'GUPTA', '7867356782',  NULL, 'NIT 3'),
    (DEFAULT, 'KISHAN', 'SINGH', 'RAVI', 'DEVI', '9898989897',  NULL, 'Palwal'),
    (DEFAULT, 'AMAN', 'GUPTA', 'SUHASI', 'GUPTA', '977376627', '9896367267',  'SECTOR 15, FARIDABAD')
;


-- INSERTING STUDNENT VALUESINSERT INTO student 
INSERT INTO student
VALUES
    (DEFAULT, 'RAHUL', 'GANDHI', 'M', '1999-02-12', '9898982347', '2001-04-03', 'melissa.king@sakilacustomer.org', 'kjsdhisudn', 2),
    (DEFAULT, 'SADHVI','BHATIA','F','1997-05-01','9293745182','2010-04-04', 'amy.lopez@sakilacustomer.org','723hu3edew',3),
    (DEFAULT, 'DEEPAK','CHAURASIA','M','1998-11-11','9800000023','2015-05-10', 'kathleen.adams@sakilacustomer.org','8shwiuwwhs',10),
    (DEFAULT, 'AJAY','AGRAWAL','M','2000-10-13',NULL,'2016-05-01', 'debra.nelson@sakilacustomer.org','8ws623hndkjs',4),
    (DEFAULT, 'POOJA', 'ARYA', 'F', '1997-06-27', '9829386756', '2010-04-20', 'carolyn.perez@sakilacustomer.org','wsjw8h2ued', 4),
    (DEFAULT, 'DIPNASHU', 'RANGA', 'M', '1997-12-03', '7838985501', '2009-03-30', 'teresa.rogers@sakilacustomer.org','xds82t8sw', 1),
    (DEFAULT, 'DHRUV', 'KUMAR', 'M', '2005-01-10', NULL, '2010-04-03', 'judith.cox@sakilacustomer.org','dwsdi92we9jd',5),
    (DEFAULT, 'ANJALI', 'RANA', 'F', '1996-10-12', NULL, '2011-05-01', 'kathy.james@sakilacustomer.org','swi9u828hys',7),
    (DEFAULT, 'JOHN', 'WICK', 'M', '1999-12-12', NULL, '2014-03-06', 'rachel.barnes@sakilacustomer.org','souw7829us', 9),
    (DEFAULT, 'ADAM', 'PAUL', 'M', '2004-01-29', NULL, '2012-04-01', 'lois.butler@sakilacustomer.org','skwioj2893h',8),
    (DEFAULT, 'JYOTI', 'SINGH', 'F', '2003-05-25', '8787873567', '2012-03-27', 'connie.wallace@sakilacustomer.org','dwkjhsi289yhd', 6)
;


--INSERNG IN TO subject TABLE
INSERT INTO subject
VALUES
    (001, 'MATHEMATICS'),
    (002, 'SCIENCE'),
    (003, 'SOCIAL SCIENCE'),
    (004, 'HINDI'),
    (005, 'ENGLISH'),
    (006, 'ARTS'),
    (007, 'MUSIC'),
    (008, 'PHYSICAL EDUCATION'),
    (009, 'HISTORY'),
    (010, 'GEOGRAPHY'),
    (011, 'POLITICAL SCIENCE'),
    (012, 'PHYSICS'),
    (013, 'CHEMISTERY'),
    (014, 'BI0LOGY'),
    (015, 'SANSKRIT')
;


-- INSERTING VALUES INTO grade TABLE
INSERT INTO grade
VALUES
    (100, 'PRE NURSURY'),
    (101, 'NURSURY'),
    (102, 'LKG'),
    (103, 'UKG'),
    (001, '1st'),
    (002, '2nd'),
    (003, '3rd'),
    (004, '4th'),
    (005, '5th'),
    (006, '6th'),
    (007, '7th'),
    (008, '8th'),
    (009, '9th'),
    (010, '10th'),
    (011, '11th'),
    (012, '12th')
;


-- INSERTING VALUES INTO department TABLE
INSERT INTO department
VALUES
    (001, 'FINANCE'),
    (002, 'EDUCATION'),
    (003, 'ACADEMIC'),
    (004, 'HOUSEKEEPING'),
    (005, 'BOARD')
;

-- INSERING INTO employee TABLE
INSERT INTO employee
VALUES
    (DEFAULT, 'PRIYANKA', 'SOLANKI', 'F', '1990-01-27', '7878786754', 'PRIYANKA@GMAIL.COM','uhkjdbuasd', 'SAINIK COLONY', '2015-01-01', 002, '1111111111', 20000),
    (DEFAULT, 'ANURAG', 'MEHTA', 'M', '1985-10-10', '9893657828', 'ANURAG77@GMAIL.COM','ejdbsaknas', 'SECTOR 11', '2002-07-13', 003, '0001234567', 25000),
    (DEFAULT, 'DHRUV', 'RATHEE', 'M', '1987-04-28', '9837489012', 'DHRUV@GMAIL.COM','eerrg6hr5', 'SGM NAGAR', '2016-02-02', 001, '3336728190987', 30000),
    (DEFAULT, 'RAHUL', 'RAHUL', 'M', '1995-04-17', '7834578298', 'RAHUL99@GMAIL.COM','445ggttvfss', 'BHOOR COLONY', '2019-08-19', 002, '012012012012', 21000),
    (DEFAULT, 'SHYAM', 'LAL', 'M', '1980-12-09', '8666787692', 'SHYAM6767@GMAIL.COM)','454fhjmyes', 'KALYANPURI', '2000-03-01', 004, '5656267189012', 12000),
    (DEFAULT, 'ANJALI', 'NAGAR', 'F', '1992-03-06', '87838982767', 'AJAYNN@GMAIL.COM','1120djufcrS', 'ANKIR', '2015-01-09',002, '901289035678', 18000),
    (DEFAULT, 'VIJAY', 'AWASTHI', 'M', '1990-12-16', '9875626789', 'VIJAY77@GMAIL.COM','9d7jTFGSsfs', 'NIT 3', '2013-10-18', 002, '001235625428', 22000),
    (DEFAULT, 'VIBHUTI', 'MISHRA', 'M', '1985-05-19', '9876378290', 'vibhuti888@gmail.com', 'pohjghjvbrd', 'Sector 3', '2020-01-15', 3, '267361890378', 21000)
;    


-- INSERT INTO teacher_subject TABLE
INSERT INTO teacher_subject
VALUES
    (1, 005),
    (4, 004),
    (6, 001),
    (7, 002)
;

-- INSERT INTO classroom TABLE
INSERT INTO classroom
VALUES
    (101, 100, 6),
    (102, 101, 4),
    (103, 102, 7),
    (104, 103, 1),
    (105, 001, NULL),
    (106, 002, NULL),
    (107, 003, NULL),
    (108, 004, NULL),
    (109, 005, NULL),
    (110, 006, NULL),
    (111, 007, NULL),
    (112, 008, NULL),
    (113, 009, NULL),
    (114, 010, NULL),
    (115, 011, NULL),
    (116, 012, NULL)
;

--INSERT INTO classroom_student TABLE
INSERT INTO classroom_student
VALUES 
    (101, 2),
    (101, 3),
    (101, 8),
    (102, 1),
    (102, 7),
    (102, 5),
    (103, 4),
    (103, 6),
    (104, 9),
    (104, 11),
    (104, 10)
;

--INSERT INTO attendance_student
INSERT INTO attendance_student
VALUES
    (CURRENT_DATE, 1, TRUE),
    (CURRENT_DATE, 2, TRUE),
    (CURRENT_DATE, 3, FALSE),
    (CURRENT_DATE, 4, TRUE),
    (CURRENT_DATE, 5, TRUE),
    (CURRENT_DATE, 6, FALSE),
    (CURRENT_DATE, 7, TRUE),
    (CURRENT_DATE, 8, TRUE),
    (CURRENT_DATE, 9, FALSE),
    (CURRENT_DATE, 10, TRUE),
    (CURRENT_DATE, 11, TRUE)
;

--INSERT INTO attendance_employee
INSERT INTO attendance_employee
VALUES
    (CURRENT_DATE, 1, TRUE),
    (CURRENT_DATE, 2, TRUE),
    (CURRENT_DATE, 3, FALSE),
    (CURRENT_DATE, 4, TRUE),
    (CURRENT_DATE, 5, TRUE),
    (CURRENT_DATE, 6, FALSE)
;
