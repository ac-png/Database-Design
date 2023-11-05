DROP DATABASE IADT;
CREATE DATABASE IADT;
USE IADT;

CREATE TABLE Modules (
    module_id int NOT NULL AUTO_INCREMENT,
    module_name varchar(255) NOT NULL,
    max_students int NOT NULL,
    num_credits int NOT NULL,
    PRIMARY KEY (module_id)
);

CREATE TABLE Departments (
    department_id int NOT NULL AUTO_INCREMENT,
    department_name varchar(255) NOT NULL,
    location varchar(255) NOT NULL,
    manager_fname varchar(255) NOT NULL,
    manager_lname varchar(255) NOT NULL,
    PRIMARY KEY (department_id)
);

CREATE TABLE Courses (
    course_id int NOT NULL AUTO_INCREMENT,
    code varchar(255) NOT NULL,
    course_name varchar(255) NOT NULL,
    max_students int NOT NULL,
    department_id int,
    PRIMARY KEY (course_id),
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);

CREATE TABLE CourseModule (
    course_id int,
    module_id int,
    FOREIGN KEY (course_id) REFERENCES Courses(course_id),
    FOREIGN KEY (module_id) REFERENCES Modules(module_id)
);

CREATE TABLE Students (
    student_id int NOT NULL AUTO_INCREMENT,
    cao_number varchar(255) NOT NULL,
    fname varchar(255) NOT NULL,
    lname varchar(255) NOT NULL,
    address varchar(255) NOT NULL,
    course_id int,
    PRIMARY KEY (student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

CREATE TABLE Grades (
    student_id int,
    module_id int,
    grade varchar(255) NOT NULL,
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (module_id) REFERENCES Modules(module_id)
);
