-- Create Students Table
CREATE TABLE Students (
    Student_ID INT,
    Student_Name VARCHAR(100),
    Course_ID VARCHAR(10),
    Course_Name VARCHAR(100),
    Instructor VARCHAR(100),
    PRIMARY KEY (Student_ID, Course_ID)
);



-- Insert data into Students table
INSERT INTO Students (Student_ID, Student_Name, Course_ID, Course_Name, Instructor)
VALUES
    (1, 'John', 'CSCI101', 'Introduction to CS', 'Prof. Smith'),
    (1, 'John', 'MATH201', 'Calculus', 'Prof. Johnson'),
    (2, 'Alice', 'CSCI101', 'Introduction to CS', 'Prof. Smith'),
    (3, 'Bob', 'MATH201', 'Calculus', 'Prof. Johnson'),
    (3, 'Bob', 'PHYS202', 'Physics', 'Prof. Brown');


select * from students;