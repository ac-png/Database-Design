1.  SELECT SUM(student_id)
    FROM students
    WHERE course_id = '15';
-- How many students are taking Entrepreneurship as their course?

2.  SELECT course_id, code, course_name
    FROM courses
    WHERE course_name like '%business%' 
-- How many business courses does IADT  have?

3.	SELECT Courses.code, Courses.course_name, Departments.department_name
    FROM Courses
    INNER JOIN Departments
    ON Courses.department_id = Departments.department_id
    WHERE Departments.department_name = 'Technology + Psychology'
-- How many courses are in the Technology + Psychology department?

4.	SELECT students.student_id, students.fname, students.lname, grades.grade 
	FROM students 
    INNER JOIN grades 
	ON students.student_id =  grades.student_id
	ORDER BY Students.student_id ASC
-- Display the Students grades including student name and id.

5	Select modules.module_name , Avg(grades.grade)
    From modules
    INNER JOIN grades
    ON modules.module_id = grades.module_id
    GROUP BY  modules.module_name
-- Display the average grade for each module including student name and id.

6   UPDATE Students
    SET lname = 'McCarthy', address = 'Dublin'
    WHERE student_id = 1
-- Update and change the first student’s name and address.

7   UPDATE Courses
    SET code = 'DL835', max_students = 50
    WHERE course_id = 10
-- Update the course code and max students number.

8   UPDATE Departments
    SET manager_fname = 'Patrick'
    WHERE location = 'Carriglea'
-- Update the managers first name, where they’re from Carriglea.

9   SELECT fname, lname
    FROM Students, Courses
    WHERE Students.course_id = Courses.course_id
    AND course_name = 'Entrepreneurship'
-- Shows the first and last names of all the students in the Entrepreneurship course.