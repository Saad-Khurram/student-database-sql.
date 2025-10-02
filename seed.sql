-- Insert students
INSERT INTO Students (first_name, last_name, email)
VALUES
('Aisha', 'Khan', 'aisha.khan@gmail.com'),
('Saad', 'Khurram', 'saad.khurram@gmail.com'),
('Maria', 'Lopez', 'maria.lopez@gmail.com');

-- Insert courses
INSERT INTO Courses (code, title, credits)
VALUES
('CS101', 'Intro to Programming', 5),
('MATH101', 'Calculus I', 5);

-- Enrollments 
INSERT INTO Enrollments (student_id, course_id, term, grade)
VALUES
(1, 1, 'Winter 2024', 'A'),
(1, 2, 'Winter 2024', 'B'),
(2, 1, 'Winter 2024', 'A-'),
(3, 2, 'Winter 2024', 'C');