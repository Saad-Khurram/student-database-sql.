DROP TABLE IF EXISTS Students CASCADE;

CREATE TABLE Students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name  VARCHAR(50),
    email      VARCHAR(100)
);

-- Courses table
DROP TABLE IF EXISTS Courses CASCADE;

CREATE TABLE Courses (
    course_id SERIAL PRIMARY KEY,
    code VARCHAR(20) UNIQUE NOT NULL,
    title VARCHAR(100) NOT NULL,
    credits INT NOT NULL
);

-- Enrollments table (connects Students and Courses)
DROP TABLE IF EXISTS Enrollments CASCADE;

CREATE TABLE Enrollments (
    enrollment_id SERIAL PRIMARY KEY,
    student_id INT REFERENCES Students(student_id) ON DELETE CASCADE,
    course_id INT REFERENCES Courses(course_id) ON DELETE CASCADE,
    term VARCHAR(20),
    grade VARCHAR(2)
);