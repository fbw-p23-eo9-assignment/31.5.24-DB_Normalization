-- Create Students Table
CREATE TABLE Students (
    Student_ID INT PRIMARY KEY,
    Student_Name VARCHAR(100)
);

-- Create Courses Table
CREATE TABLE Courses (
    Course_ID VARCHAR(10) PRIMARY KEY,
    Course_Name VARCHAR(100)
);

-- Create Instructors Table
CREATE TABLE Instructors (
    Course_ID VARCHAR(10),
    Instructor VARCHAR(100),
    FOREIGN KEY (Course_ID) REFERENCES Courses(Course_ID)
);


-- Insert data into Students table
INSERT INTO Students (Student_ID, Student_Name)
VALUES
    (1, 'John'),
    (2, 'Alice'),
    (3, 'Bob');

-- Insert data into Courses table
INSERT INTO Courses (Course_ID, Course_Name)
VALUES
    ('CSCI101', 'Introduction to CS'),
    ('MATH201', 'Calculus'),
    ('PHYS202', 'Physics');

-- Insert data into Instructors table
INSERT INTO Instructors (Course_ID, Instructor)
VALUES
    ('CSCI101', 'Prof. Smith'),
    ('MATH201', 'Prof. Johnson'),
    ('PHYS202', 'Prof. Brown');
