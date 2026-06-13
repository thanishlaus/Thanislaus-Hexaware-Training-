-- CREATE DATABASE course_tracker;
-- USE course_tracker;

CREATE TABLE students(
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    student_name VARCHAR(100),
    email VARCHAR(100),
    join_date DATE
);

-- CREATE TABLE courses(
--     course_id INT PRIMARY KEY AUTO_INCREMENT,
--     course_name VARCHAR(100),
--     instructor VARCHAR(100),
--     duration_weeks INT
-- );

-- CREATE TABLE enrollments(
--     enrollment_id INT PRIMARY KEY AUTO_INCREMENT,
--     student_id INT,
--     course_id INT,
--     enrollment_date DATE,
--     FOREIGN KEY(student_id) REFERENCES students(student_id),
--     FOREIGN KEY(course_id) REFERENCES courses(course_id)
-- );

-- CREATE TABLE progress(
--     progress_id INT PRIMARY KEY AUTO_INCREMENT,
--     enrollment_id INT,
--     completion_percentage DECIMAL(5,2),
--     last_updated DATE,
--     FOREIGN KEY(enrollment_id) REFERENCES enrollments(enrollment_id)
-- );

