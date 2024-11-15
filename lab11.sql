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

-- This query displays the title and due_date of assignments for the course COMP1234
SELECT title, due_date
FROM assignments
WHERE course_id = 'COMP1234';

-- This query finds the earliest assignment due date in the assignments table
SELECT min(due_date) AS earliest_due_date
FROM assignments;

-- This query finds the latest assignment due date in the assignments table
SELECT max(due_date) AS latest_due_date
FROM assignments;

-- This query finds the title and course_id of assignments due on 2024-10-08
SELECT title, course_id
FROM assignments
WHERE due_date = '2024-10-08';

-- This query displays the title and due_date of assignments due in October 2024
SELECT title, due_date
FROM assignments
WHERE due_date LIKE '2024-10%';

-- This query finds the most recent due_date of assignments with a status of "Completed"
SELECT max(due_date) AS most_recent_completed_date
FROM assignments
WHERE status = 'Completed';

