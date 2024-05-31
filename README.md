# Normalization Exercise:

## Raw Table (Unnormalized):
Here's the raw table:

| Student ID | Student Name | Course ID          | Course Name                      | Instructor   |
|------------|--------------|--------------------|----------------------            |--------------|
| 1          | John         | CSCI101, MATH201   | Introduction to CS ,  Calculus   | Prof. Smith,Prof. Johnson  |
| 2          | Alice        | CSCI101            | Introduction to CS               | Prof. Smith  |
| 3          | Bob          | MATH201, PHYS202   | Calculus, Physics                | Prof. Johnson, Prof. Brown |

## 1NF (First Normal Form):
In 1NF, we'll ensure atomic values and use a composite primary key to make each row unique.

Execute the respective postgres queries and create the `students1NF` table in `normalisationDB`. It should have composite keys `Student_ID`, `Course_ID`.
Table should look like this. 

**Normalized Table:**

| Student ID | Student Name | Course ID | Course Name          | Instructor   |
|------------|--------------|-----------|----------------------|--------------|
| 1          | John         | CSCI101   | Introduction to CS   | Prof. Smith  |
| 1          | John         | MATH201   | Calculus             | Prof. Johnson|
| 2          | Alice        | CSCI101   | Introduction to CS   | Prof. Smith  |
| 3          | Bob          | MATH201   | Calculus             | Prof. Johnson|
| 3          | Bob          | PHYS202   | Physics              | Prof. Brown  |


## 2NF (Second Normal Form):
In 2NF, we remove partial dependencies by splitting the table into multiple tables.

Create 3 tables in `normalisationDB`:
-   `students` with ***student_id*** as primary key.
-   `courses` with ***course_id*** as primary key.
-   `instructors` with ***course_id*** as primary key.

**Students Table:**

| Student ID | Student Name |
|------------|--------------|
| 1          | John         |
| 2          | Alice        |
| 3          | Bob          |

**Courses Table:**

| Course ID | Course Name          | 
|-----------|----------------------|
| CSCI101   | Introduction to CS   |
| MATH201   | Calculus             |
| PHYS202   | Physics              |

**Instructors Table:**

| Course ID | Instructor   |
|-----------|--------------|
| CSCI101   | Prof. Smith  |
| MATH201   | Prof. Johnson|
| PHYS202   | Prof. Brown  |

## 3NF (Third Normal Form):
In 3NF, we ensure there are no **transitive dependencies**.
For the above 3 tables: 
-   `students` with ***student_id*** as primary key.
-   `courses` with ***course_id*** as primary key.
-   `instructors` with ***course_id*** as primary key.

Create one more table called **"Enrollment"** with `student_id` as primary key. 

**Students Table:**

| Student ID | Student Name |
|------------|--------------|
| 1          | John         |
| 2          | Alice        |
| 3          | Bob          |

**Courses Table:**

| Course ID | Course Name          | 
|-----------|----------------------|
| CSCI101   | Introduction to CS   |
| MATH201   | Calculus             |
| PHYS202   | Physics              |

**Instructors Table:**

| Course ID | Instructor   |
|-----------|--------------|
| CSCI101   | Prof. Smith  |
| MATH201   | Prof. Johnson|
| PHYS202   | Prof. Brown  |

**Enrollment Table:**

| Student ID | Course ID | 
|------------|-----------|
| 1          | CSCI101   |
| 1          | MATH201   |
| 2          | CSCI101   |
| 3          | MATH201   |
| 3          | PHYS202   |


Now your table is completely Normalised without any kind of dependancies.