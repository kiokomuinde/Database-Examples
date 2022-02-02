SET FOREIGN_KEY_CHECKS=0;
DROP DATABASE IF EXISTS SCHOOLDB;
CREATE DATABASE SCHOOLDB;
DROP TABLE IF EXISTS STUDENT;
DROP TABLE IF EXISTS CAMPUS;
DROP TABLE IF EXISTS ROOM;
DROP TABLE IF EXISTS COURSE;
DROP TABLE IF EXISTS INSTRUCTOR;
DROP TABLE IF EXISTS APPROVED_INSTRUCTOR;
DROP TABLE IF EXISTS CLASS;
DROP TABLE IF EXISTS STUDENT_GRADE;
CREATE TABLE STUDENT (
    Student_ID int NOT NULL AUTO_INCREMENT,
    Last_Name char(255) NOT NULL,
    First_Name char(255) NOT NULL,
    Address varchar(100),
    Zip varchar(100),
    Major char(100),
    Class char(255),
    Status char(50),
    PRIMARY KEY (Student_ID)
);

CREATE TABLE CAMPUS ( 
    Campus_Name char(255) NOT NULL,
    Address varchar(100),
    Zip varchar(100),
    Phone_No varchar(20),
    PRIMARY KEY (Campus_Name)
);
CREATE TABLE ROOM (
    Room_No int NOT NULL AUTO_INCREMENT,
    Campus_Name char(255) NOT NULL,
    Facility char(255),
    Capacity int,
    PRIMARY KEY (Room_No),
    FOREIGN KEY (Campus_Name) REFERENCES CAMPUS (Campus_Name)
);
CREATE TABLE COURSE ( 
    Course_No int NOT NULL AUTO_INCREMENT,
    Course_Name char(255) NOT NULL UNIQUE,
    Credit_Hours int CHECK (Credit_Hours <= 1 AND Credit_Hours <= 4),
    PRIMARY KEY (Course_No)
);
CREATE TABLE INSTRUCTOR (
    Instructor_ID int NOT NULL AUTO_INCREMENT,
    Last_Name char(255) NOT NULL,
    First_Name char(255) NOT NULL,
    Address varchar(100),
    Zip varchar(100),
    Office_No int,
    PRIMARY KEY (Instructor_ID)
);
CREATE TABLE APPROVED_INSTRUCTOR (
    Instructor_ID int NOT NULL AUTO_INCREMENT,
    Course_No int,
    FOREIGN KEY (Instructor_ID) REFERENCES INSTRUCTOR (Instructor_ID),
    FOREIGN KEY (Course_No) REFERENCES COURSE (Course_No)
);
CREATE TABLE CLASS ( 
    Calss_ID int NOT NULL AUTO_INCREMENT,
    Room_No int,
    Course_No int,
    Section_No int,
    Semester_Name char(255),
    Years int,
    Instructor_ID int,
    Start_Date date,
    Start_Time time,
    Campus_Name char(255) NOT NULL,
    PRIMARY KEY (Calss_ID),
    FOREIGN KEY (Room_No) REFERENCES ROOM (Room_No),
    FOREIGN KEY (Campus_Name) REFERENCES CAMPUS (Campus_Name)
);
CREATE TABLE STUDENT_GRADE ( 
    Student_ID int NOT NULL AUTO_INCREMENT,
    Calss_ID int,
    Student_Grade char(1) CHECK (Student_Grade= 'A' OR 'B'OR 'C'OR 'D'OR 'E'OR 'F'OR 'W'OR 'E'),
    FOREIGN KEY (Student_ID) REFERENCES STUDENT (Student_ID),
    FOREIGN KEY (Calss_ID) REFERENCES CLASS (Calss_ID)
);