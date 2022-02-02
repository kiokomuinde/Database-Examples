CREATE DATABASE School;

CREATE TABLE Student (
    Student_ID varchar(255) NOT NULL,
    Name varchar(255),
    DOB date,
    Phone_Number varchar(255),
    PRIMARY KEY (Student_ID)
);

CREATE TABLE Part_Time (
    Employee_ID varchar(255) NOT NULL,
    Role varchar(255),
    Salary float,
    Hours_Worked float,
    PRIMARY KEY (Employee_ID)
);

CREATE TABLE Full_Time (
    Employee_ID varchar(255) NOT NULL,
    Role varchar(255),
    Salary float,
    Hours_Worked float,
    Status varchar(255), 
    PRIMARY KEY (Employee_ID)
);

CREATE TABLE Student_Exams (
    Exam_ID varchar(255) NOT NULL,
    Student_ID varchar(255),
    Marks int,
    PRIMARY KEY (Exam_ID ),
    FOREIGN KEY (Student_ID) REFERENCES Student(Student_ID)
);

CREATE TABLE Room (
    Room_Num varchar(255) NOT NULL,
    Capacity int,
    Building varchar(100),
    PRIMARY KEY (Room_Num)
);

CREATE TABLE Courses (
    Course_ID varchar(255) NOT NULL,
    Room_Num varchar(255),
    Semester varchar(50),
    Course_Num varchar(50),
    Year int,
    Time int,
    PRIMARY KEY (Course_ID)
);

CREATE TABLE Student_Courses (
    Course_ID varchar(255) NOT NULL,
    Student_ID varchar(255),
    FOREIGN KEY (Course_ID) REFERENCES Courses(Course_ID),
    FOREIGN KEY (Student_ID) REFERENCES Student(Student_ID)
);

CREATE TABLE Examination (
    Exam_ID varchar(255) NOT NULL,
    Exam_Time time,
    Exam_Date date,
    Type varchar(50),
    PRIMARY KEY (Exam_ID )
);

CREATE TABLE Assignments (
    Assignment_ID varchar(255) NOT NULL,
    Semester varchar(50),
    Assignment_Name varchar(100),
    Year int,
    Type varchar(50),
    PRIMARY KEY (Assignment_ID)
);

CREATE TABLE Projects (
    Project_ID varchar(255) NOT NULL,
    Project_Title varchar(50),
    Project_Timeline varchar(100),
    PRIMARY KEY (Project_ID)
);

CREATE TABLE Project_Evaluation (
    Evaluation_Criteria varchar(255),
    Project_Grades varchar(50),
    Evaluation_Timeline varchar(100)
);

CREATE TABLE Project_Proposal (
    Project_Name varchar(255),
    Project_Description varchar(255),
    Project_Status varchar(100)
);

CREATE TABLE Department (
    Department_Name varchar(100),
    Department_Location varchar(100)
);

CREATE TABLE Prerequisites (
    Prerequisite_ID varchar(255) NOT NULL,
    Prerequisite_Grade varchar(50),
    PRIMARY KEY (Prerequisite_ID)
);

CREATE TABLE Instructors (
    Instructor_ID varchar(255) NOT NULL,
    First_Name varchar(255),
    Last_Name varchar(255),
    Department_Name varchar(100),
    Phone_Num varchar(255),
    PRIMARY KEY (Instructor_ID)
);

CREATE TABLE Instructor_Office_Hours (
    Instructor_Name varchar(255),
    Instructor_Mail_ID varchar(255),
    Instructor_Things varchar(255)
);

CREATE TABLE Classes (
    Location varchar(255),
    Seating_Arragement varchar(255),
    Start_Time time,
    End_Time time
);

CREATE TABLE Teaching_Assistants (
    TA_ID varchar(255) NOT NULL,
    TA_Name varchar(255),
    TA_Email_ID varchar(255),
    TA_Office_Hours int,
    PRIMARY KEY (TA_ID)
);

CREATE TABLE Graders (
    Graders_ID varchar(255) NOT NULL,
    Grader_Name varchar(255),
    Grader_Email_ID varchar(255),
    Grader_Office_Hours int,
    PRIMARY KEY (Graders_ID)
);