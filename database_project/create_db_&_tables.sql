-- THIS IS THE SQL FILE TO GENERTAE THE STRUCTURE OF "school_sysytem" DATABASE

-- File Name       : create_db_&_tables.sql
-- DATABASE        : school_system
-- Author          : Dipanshu Ranga (@dip-beryl)
-- Organization    : Beryl Systems Pvt. Ltd.


-- CREATE THE DATABASE
DROP DATABASE IF EXISTS school_system;
CREATE DATABASE school_system;

-- CONNECT TO THE DATABASE
\connect school_system

-- CREATE TABLE STUDENT
DROP TABLE IF EXISTS student;
CREATE TABLE student (
    student_id  SERIAL PRIMARY KEY NOT NULL UNIQUE,
    first_name  VARCHAR(20) NOT NULL,
    last_name   VARCHAR(20) NOT NULL,
    gender      char(1) NOT NULL CHECK(gender = 'M' OR gender = 'F'),
    dob         date NOT NULL,
    contact     VARCHAR(15),
    date_of_admission DATE NOT NULL,
    email       VARCHAR(254) NOT NULL UNIQUE,
    password    VARCHAR(25) NOT NULL CHECK (LENGTH(password) > 6),
    family_id   INTEGER NOT NULL
);

-- CREATE FAMILY DATABASE
DROP TABLE IF EXISTS family;
CREATE TABLE family(
    family_id       SERIAL PRIMARY KEY NOT NULL UNIQUE,
    f_first_name    VARCHAR(20)  NOT NULL,
    f_last_name     VARCHAR(20),
    m_first_name    VARCHAR(20),
    m_last_name     VARCHAR(20),
    contact         VARCHAR(15) NOT NULL,
    contact_2       VARCHAR(15),
    address         TEXT NOT NULL
);

-- SETTING THE FOREIGN KEY OF student.family_id TO family.family_id
ALTER TABLE ONLY student ADD CONSTRAINT student_family_id_fkey FOREIGN KEY (family_id) REFERENCES family(family_id);

-- CREATE DEPARTMENT TABLE
DROP TABLE IF EXISTS department;
CREATE TABLE department(
    dept_id     INTEGER PRIMARY KEY NOT NULL UNIQUE,
    dept_name   VARCHAR(20)     NOT NULL
);

-- CREATE EMPLOYEE TABLE
DROP TABLE IF EXISTS employee;
CREATE TABLE employee(
    employee_id SERIAL  PRIMARY KEY NOT NULL UNIQUE,
    first_name  VARCHAR(20) NOT NULL,
    last_name   VARCHAR(20) NOT NULL,
    gender      char(1) NOT NULL CHECK(gender = 'M' OR gender = 'F'),
    dob         date NOT NULL,
    contact     VARCHAR(15) NOT NULL,
    email       VARCHAR(254) NOT NULL UNIQUE,
    password    VARCHAR(25) NOT NULL CHECK (LENGTH(password) > 6),
    address     TEXT NOT NULL,
    date_of_join    DATE    NOT NULL,
    dept_id     INTEGER NOT NULL REFERENCES department(dept_id),
    account_no  TEXT,
    salary  REAL
);

-- CREATE A SUBJECT TABLE
DROP TABLE IF EXISTS subject;
CREATE TABLE subject(
    subject_id  INTEGER PRIMARY KEY NOT NULL UNIQUE,
    subject_name    VARCHAR(50) NOT NULL
);

-- CREATE A SEPERATE TEACHER TABLE FROM employee TABLE
DROP TABLE IF EXISTS teacher;
CREATE TABLE teacher(
    teacher_id      INTEGER  NOT NULL REFERENCES employee(employee_id) UNIQUE,
    subject_id    INTEGER             REFERENCES subject(subject_id)
);

-- CREATE GRADE TABLE
DROP TABLE IF EXISTS grade;
CREATE TABLE grade(
    grade_id   INTEGER PRIMARY KEY NOT NULL UNIQUE,
    grade_name VARCHAR(20) NOT NULL UNIQUE
);

-- CRAETE CLASSROOM TABLE
DROP TABLE IF EXISTS classroom;
CREATE TABLE classroom(
    classroom_id    INTEGER PRIMARY KEY NOT NULL UNIQUE,
    grade_id        INTEGER     REFERENCES grade(grade_id),
    teacher_id      INTEGER     REFERENCES teacher(teacher_id)
);

-- CREATE A CONNECTION TABLE classrom_student
DROP TABLE IF EXISTS classroom_student;
CREATE TABLE classroom_student(
    classroom_id    INTEGER    REFERENCES classroom(classroom_id),
    student_id      INTEGER    REFERENCES student(student_id)
);

-- CREATE ATTENDANCE TABLE FOR STUDENTS
DROP TABLE IF EXISTS attendance_student;
CREATE TABLE attendance_student(
    date    DATE    NOT NULL,
    student_id  INT REFERENCES student(student_id),
    status  BOOLEAN
);

-- CREATE ATTENDANCE TABLE FOR EMPLOYEES
DROP TABLE IF EXISTS attendance_employee;
CREATE TABLE attendance_employee(
    date    DATE    NOT NULL,
    employee_id  INT REFERENCES employee(employee_id),
    status  BOOLEAN
);

--CREATE users TABLE
DROP TABLE IF EXISTS users;
CREATE TABLE users(
    user_id       VARCHAR(254) NOT NULL UNIQUE,
    password    VARCHAR(25) NOT NULL,
    user_type   CHAR(2) NOT NULL CHECK (user_type = 'A' OR user_type = 'S' OR user_type = 'F' OR user_type = 'E'),
    create_date TIMESTAMP   NOT NULL

); -- A = Admin, S = Student, F = family, E = Employee