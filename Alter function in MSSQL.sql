/* Create table*/
CREATE TABLE grades (
student_id int,
course_id int,
course varchar(30) NOT NULL,
grade varchar(5) NOT NULL,
PRIMARY KEY (student_id, course_id)
)/* Insert items into table*/INSERT INTO grades
VALUES
(1, 1, 'Biology 2', 'F'),
(1, 2, 'English 11B', 'D'),
(1, 3, 'World History 11B', 'C'),
(1, 4, 'Trig 2', 'B')

/* Overview of Table*/
SELECT * FROM grades

/* SQL Server function for altering column name*/
EXEC sp_rename 'grades.course', 'module', 'COLUMN'

SELECT * FROM grades

