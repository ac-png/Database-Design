INSERT INTO Departments
    (department_name, location, manager_fname, manager_lname)
VALUES 
    ('Technology + Psychology', 'Attrium', 'Avaya', 'Keeling'),
    ('Entrepreneurship', 'Carriglea', 'Jamie-Lee', 'Higgins'),
    ('Design + Visual Arts', 'Attrium', 'Dillon', 'Daugherty'),
    ('Humanities + Arts Management', 'Attrium', 'Kenan', 'Nicholson'),
    ('Film + Media', 'Carriglea', 'Suzanna', 'Murillo');

INSERT INTO Modules
    (module_name, max_students, num_credits)
VALUES
    ('FFACT Transitional Studies', 25, 5),
    ('Digital Media & Prototyping', 25, 5),
    ('Web Design', 25, 5),
    ('Programming', 25, 10),
    ('Computing Concepts', 25, 5),
    ('FFACT Practical Masterclass', 25, 5),
    ('Web Development', 25, 5),
    ('Object Oriented Programming', 25, 5),
    ('Integrated Project', 25, 10),
    ('Introduction to Databases', 25, 5),
    ('Interaction Design', 25, 5),
    ('User Experience Design', 25, 5),
    ('Web Design Frameworks', 25, 5),
    ('Advanced Web Development', 25, 10),
    ('Advanced Databases', 25, 5),
    ('FFACT Elective', 25, 5),
    ('Creative Coding 1', 25, 5),
    ('Creative Coding 2', 25, 5),
    ('Software Project', 25, 10),
    ('Architecture & Operating Systems', 25, 5);

INSERT INTO Courses
    (code, course_name, max_students, department_id)
VALUES
    ('DL846', '3D Animation', 20, 5),
    ('DL832', 'Animation', 30, 5),
    ('DL701', 'Applied Entrepreneurship', 25, 2),
    ('DL825', 'Applied Psychology', 65, 1),
    ('DL827', 'Art', 50, 3),
    ('DL827', 'Arts Management', 30, 4),
    ('DL848', 'Business and Digital Technology', 30, 2),
    ('DL823', 'Business Management', 35, 2),
    ('DL836', 'Creative Computing', 50, 1),
    ('DL838', 'Creative Music Production', 45, 5),
    ('DL845', 'Design for Film', 50, 5),
    ('DL840', 'Digital Marketing', 25, 2),
    ('DL841', 'English and Equality Studies', 20, 4),
    ('DL849', 'English and Media', 30, 4),
    ('DL801', 'Entrepreneurship', 50, 2),
    ('DL843', 'Film', 20, 5),
    ('DL826', 'Graphic Design', 30, 3),
    ('DL837', 'New Media Studies', 40, 4),
    ('DL833', 'Photography and Visual Media', 25, 5),
    ('DL844', 'Television', 20, 5);

INSERT INTO Students
    (cao_number, fname, lname, address, course_id)
VALUES
    ('AJR8RV', 'Gardner', 'Avery', 'Sligo', 15),
    ('NX56DQ', 'Nora', 'Berger', 'Laois', 11),
    ('CWE95H', 'Florence', 'Brady', 'Donegal', 16),
    ('TD5PBA', 'Lindsay', 'Bray', 'Wexford', 19),
    ('2ASU4M', 'Lee', 'Calhoun', 'Leitrim', 3),
    ('Q457N4', 'Riley', 'Curry', 'Cork', 14),
    ('PAYUNF', 'Hayden', 'Frost', 'Donegal', 7),
    ('PMT6QD', 'Dalton', 'Gallagher', 'Mayo', 15),
    ('XKQP27', 'Lloyd', 'Keeling', 'Armagh', 19),
    ('4CGJJ8', 'Katy', 'Koch', 'Clare', 1),
    ('SFDSKW', 'Warren', 'Malone', 'Limerick', 1),
    ('A3MQJC', 'Faye', 'Mathis', 'Meath', 6),
    ('9ZDRF5', 'Stanford', 'Norman', 'Wicklow', 13),
    ('4SSERD', 'Rae', 'Parks', 'Antrim', 10),
    ('F3H848', 'Aubrey', 'Scott', 'Dublin', 18),
    ('2AB7NP', 'Pat', 'Stokes', 'Dublin', 18),
    ('KNX9PN', 'Frankie', 'Welch', 'Tipperary', 18),
    ('5RQUFH', 'Maybelle', 'Willis', 'Wexford', 13),
    ('SRBE5K', 'Dana', 'Yates', 'Mayo', 12),
    ('S9WDRP', 'Grant', 'Young', 'Wicklow', 16);

INSERT INTO CourseModule
    (course_id, module_id)
VALUES
    (19, 17),
    (6, 5),
    (16, 8),
    (6, 15),
    (20, 7),
    (9, 3),
    (7, 9),
    (20, 9),
    (6, 10),
    (20, 5);

INSERT INTO Grades
    (student_id, module_id, grade)
VALUES
    (6, 16, '94'),
    (16, 8, '92'),
    (1, 1, '79'),
    (13, 18, '36'),
    (8, 1, '85'),
    (13, 6, '95'),
    (9, 19, '93'),
    (16, 19, '41'),
    (4, 20, '82'),
    (5, 5, '37');