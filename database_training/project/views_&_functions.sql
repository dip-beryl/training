-- THIS FILE CREATES VIEWS, FUNCTIONS, TRIGGERS FOR school_sysytem DATABASE

-- File Name       : views_&_functions.sql
-- DATABASE        : school_system
-- Author          : Dipanshu Ranga (@dip-beryl)
-- Organization    : Beryl Systems Pvt. Ltd.

------------------------------------------------------------------------------------------------------
--VIEWS


--CREATING VIEW student_details_view
DROP VIEW IF EXISTS student_detail_view;
CREATE VIEW student_detail_view
AS
SELECT
    s.student_id AS ID,
    first_name, 
    last_name, 
    f_first_name AS father_first_name, 
    f_last_name AS father_last_name, 
    g.grade_name AS grade,
    f.contact AS contact,
    s.dob AS date_of_birth
FROM
    student s
LEFT JOIN
    family f
        USING (family_id)
LEFT JOIN
    classroom_student cs
        ON s.student_id = cs.student_id
LEFT JOIN
    classroom c
        ON cs.classroom_id =c.classroom_id
LEFT JOIN
    grade g
        ON c.grade_id = g.grade_id;



-- CREATING VIEW for teacher details
DROP VIEW IF EXISTS teacher_detail_view;
CREATE VIEW teacher_detail_view
AS
SELECT
    t.teacher_id AS ID,
    first_name,
    last_name,
    subject_name,
    grade_name AS head_of,
    classroom_id AS room_no,
    contact,
    email
FROM
    teacher t
LEFT JOIN
    employee e
        ON t.teacher_id = e.employee_id
LEFT JOIN
    subject s
        ON t.subject_id = s.subject_id
LEFT JOIN
    classroom c
        ON t.teacher_id = c.teacher_id
LEFT JOIN
    grade g
        ON c.grade_id = g.grade_id;


--CREATE VIEW for class grade and head teacher info
DROP VIEW IF EXISTS classroom_grade_head_view;
CREATE VIEW classroom_grade_head_view
AS
SELECT
    classroom_id AS room_no,
    grade_name AS grade,
    CONCAT(first_name, ' ',last_name) AS head_teacher
FROM
    grade g
LEFT JOIN
    classroom c
        USING(grade_id)
LEFT JOIN
    employee e
     ON c.teacher_id = e.employee_id;

--------------------------------------------------------------------------------------------------------------
-- FUNCTIONS


-- FUNCTION to know total students in a specific grade
CREATE OR REPLACE FUNCTION total_student_grade_wise(g_id INT)
    RETURNS INTEGER
LANGUAGE plpgsql
    AS
$$
    DECLARE
        student_count INTEGER;
BEGIN

    SELECT
        COUNT(cs.student_id) INTO student_count

    FROM
        grade g
    JOIN
        classroom c
            USING(grade_id)
    JOIN
        classroom_student cs
            ON c.classroom_id = cs.classroom_id

    WHERE
        g.grade_id = g_id;

RETURN student_count;
END $$;


   --------------------------------------------------------------------------------------------------- 

--TRIGGERS


--trigger function of user_employee_input_trigger to input data in user table
CREATE OR REPLACE FUNCTION user_employee_input_function()
    RETURNS TRIGGER
LANGUAGE plpgsql
    AS
$$

BEGIN
    INSERT INTO users
    VALUES (NEW.email, NEW.password, 'E', CURRENT_TIMESTAMP);

    RETURN NEW;
END $$;

-- trigger to automaticly get email id and password to users table from empployee table
DROP TRIGGER IF EXISTS user_employee_insert_trigger ON employee;
CREATE TRIGGER user_employee_insert_trigger
AFTER 
INSERT ON employee
FOR EACH ROW
EXECUTE PROCEDURE user_employee_input_function();




--trigger function of user_student_input_trigger to input data in user table from student table
CREATE OR REPLACE FUNCTION user_student_input_function()
    RETURNS TRIGGER
LANGUAGE plpgsql
    AS
$$

BEGIN
    INSERT INTO users
    VALUES (NEW.email, NEW.password, 'S', CURRENT_TIMESTAMP);

    RETURN NEW;
END $$;

-- trigger to automaticly get email id and password to users table from student table
DROP TRIGGER IF EXISTS user_student_insert_trigger ON student;
CREATE TRIGGER user_student_insert_trigger
AFTER 
INSERT ON student
FOR EACH ROW
EXECUTE PROCEDURE user_student_input_function();

