CREATE DATABASE TheWolfPack_sisdb;

CREATE TABLE students (
    id varchar(255) NOT NULL,
    firstName varchar(255),
    lastName varchar(20),
    enrololmentDate date,
    phone varchar(100),
    PRIMARY KEY (id)
);

CREATE TABLE instructors (
    id varchar(255) NOT NULL,
    firstName varchar(255),
    lastName varchar(20),
    hireDate date,
    phone varchar(100),
    PRIMARY KEY (id)
);

CREATE TABLE departments (
    id varchar(255) NOT NULL,
    deptName varchar(255),
    PRIMARY KEY (id)
);

CREATE TABLE courses (
    id varchar(255) NOT NULL,
    courseName varchar(255),
    deptName varchar(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE terms(
    name varchar(255) NOT NULL,
    startDate date,
    endDate date,
    termYear year,
    season varchar(255)
);

CREATE TABLE assignements(
    course_id varchar(255) NOT NULL,
    courseName varchar(255),
    instructorFisrtName varchar(255) NOT NULL,
    termName varchar(255) NOT NULL,
    FOREIGN KEY (course_id) REFERENCES courses(id)
);

CREATE TABLE course_registrations(
    courseName varchar(255),
    termName varchar(255) NOT NULL,
    studentFirstName varchar(255) NOT NULL
);