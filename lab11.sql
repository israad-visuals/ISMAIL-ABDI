-- we will first get all the data from assignment table 
SELECT * FROM assignments
-- This querry gets all the data from courses table 
SELECT * FROM courses
--this query gets first 10 list of data in assignments table
SELECT * FROM assignments
LIMIT 10; 
--this query gets number of total courses in table of courses
SELECT count(*) FROM courses;
--this query gets minimum due date from assigment table
SELECT min(due_date) FROM assignments;
--this query gets minimum due date from assigment table
SELECT min(due_date) FROM assignments;
-- This query gets all data from the courses table where the course name starts with 'Intro'
SELECT *
FROM courses
WHERE course_name LIKE 'Intro%';

-- This query gets all data from the assignments table where the status is not 'Completed'
-- and orders the results by due date
SELECT *
FROM assignments
WHERE status != 'Completed'
ORDER BY due_date;

-- This query gets course ID, title, status, and due date for assignments that are not completed,
-- are in courses starting with 'COMM,' and have a due date before the end of 2024
SELECT course_id, title, status, due_date
FROM assignments
WHERE status != 'Completed'	
  AND course_id LIKE 'COMM%'
  AND due_date < '2024-12-31'
ORDER BY due_date;
