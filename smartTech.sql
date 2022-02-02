CREATE DATABASE SmartTech;

CREATE TABLE Users (
    User_ID varchar(255) NOT NULL,
    Name varchar(255),
    Email varchar(255),
    Phone_Number varchar(255),
    PRIMARY KEY (User_ID)
);

CREATE TABLE Orders (
    Order_ID varchar(255) NOT NULL,
    Items varchar(255),
    Cost float,
    User_ID varchar(255),
    PRIMARY KEY (Order_ID),
    FOREIGN KEY (User_ID) REFERENCES Users(User_ID)
);

CREATE TABLE Returned_Orders (
    Order_ID varchar(255) NOT NULL,
    No_Items int,
    User_ID varchar(255),
    FOREIGN KEY (Order_ID) REFERENCES Orders(User_ID),
    FOREIGN KEY (User_ID) REFERENCES Users(User_ID)
);

CREATE TABLE Completed (
    Order_ID varchar(255) NOT NULL,
    Items varchar(255),
    Cost float,
    User_ID varchar(255),
    FOREIGN KEY (Order_ID) REFERENCES Orders(User_ID),
    FOREIGN KEY (User_ID) REFERENCES Users(User_ID)
);

CREATE TABLE Delivered (
    Order_ID varchar(255) NOT NULL,
    Items varchar(255),
    User_ID varchar(255),
    FOREIGN KEY (Order_ID) REFERENCES Orders(User_ID),
    FOREIGN KEY (User_ID) REFERENCES Users(User_ID)
);

CREATE TABLE Managers(
    Mang_ID varchar(255) NOT NULL,
    Name varchar(50),
    Email varchar(255),
    Phone_NO varchar(255),
    PRIMARY KEY (Mang_ID)
);

CREATE TABLE Stores (
    Store_ID varchar(255) NOT NULL,
    Location varchar(50),
    Mang_ID varchar(255),
    No_Employees int,
    PRIMARY KEY (Store_ID),
    FOREIGN KEY (Mang_ID) REFERENCES Managers(Mang_ID)
);
 
 CREATE TABLE Employees (
    Emp_ID varchar(255) NOT NULL,
    Name varchar(50),
    Email varchar(255),
    Phone_NO varchar(255),
    PRIMARY KEY (Emp_ID)
);

 CREATE TABLE On_Leave (
    Emp_ID varchar(255) NOT NULL,
    Start_Date date,
    End_Date date,
    FOREIGN KEY (Emp_ID) REFERENCES Employees(Emp_ID)
);

CREATE TABLE Suppliers(
    Supplier_ID varchar(255) NOT NULL,
    Name varchar(50),
    Email varchar(255),
    Phone_NO varchar(255),
    PRIMARY KEY (Supplier_ID)
);

CREATE TABLE Storage_Media (
    Smedia_ID varchar(255) NOT NULL,
    Name varchar(50),
    Price float,
    Remaining int,
    Type varchar(150),
    Supplier_ID varchar(255) NOT NULL,
    PRIMARY KEY (Smedia_ID),
    FOREIGN KEY (Supplier_ID) REFERENCES Suppliers(Supplier_ID)
);

CREATE TABLE Smart_Locks (
    Smartlock_ID varchar(255) NOT NULL,
    Name varchar(50),
    Price float,
    Remaining int,
    Type varchar(150),
    Supplier_ID varchar(255) NOT NULL,
    PRIMARY KEY (Smartlock_ID ),
    FOREIGN KEY (Supplier_ID) REFERENCES Suppliers(Supplier_ID)
);

CREATE TABLE Keyboards (
    Keyboard_ID varchar(255) NOT NULL,
    Name varchar(50),
    Price float,
    Remaining int,
    Type varchar(150),
    Supplier_ID varchar(255) NOT NULL,
    PRIMARY KEY (Keyboard_ID),
    FOREIGN KEY (Supplier_ID) REFERENCES Suppliers(Supplier_ID)
);

CREATE TABLE Antenas (
    Antena_ID varchar(255) NOT NULL,
    Name varchar(50),
    Price float,
    Remaining int,
    Type varchar(150),
    Supplier_ID varchar(255) NOT NULL,
    PRIMARY KEY (Antena_ID),
    FOREIGN KEY (Supplier_ID) REFERENCES Suppliers(Supplier_ID)
);

CREATE TABLE Laptops (
    Laptops_ID varchar(255) NOT NULL,
    Name varchar(50),
    Price float,
    Remaining int,
    Type varchar(150),
    Supplier_ID varchar(255) NOT NULL,
    PRIMARY KEY (Laptops_ID),
    FOREIGN KEY (Supplier_ID) REFERENCES Suppliers(Supplier_ID)
);

CREATE TABLE Robots (
    Robot_ID varchar(255) NOT NULL,
    Name varchar(50),
    Price float,
    Remaining int,
    Type varchar(150),
    Supplier_ID varchar(255) NOT NULL,
    PRIMARY KEY (Robot_ID),
    FOREIGN KEY (Supplier_ID) REFERENCES Suppliers(Supplier_ID)
);

CREATE TABLE Routers (
    Router_ID varchar(255) NOT NULL,
    Name varchar(50),
    Price float,
    Remaining int,
    Type varchar(150),
    Supplier_ID varchar(255) NOT NULL,
    PRIMARY KEY (Router_ID),
    FOREIGN KEY (Supplier_ID) REFERENCES Suppliers(Supplier_ID)
);

CREATE TABLE Cameras (
    Camera_ID varchar(255) NOT NULL,
    Name varchar(50),
    Price float,
    Remaining int,
    Type varchar(150),
    Supplier_ID varchar(255) NOT NULL,
    PRIMARY KEY (Camera_ID),
    FOREIGN KEY (Supplier_ID) REFERENCES Suppliers(Supplier_ID)
);

CREATE TABLE Desktops (
    Desktop_ID varchar(255) NOT NULL,
    Name varchar(50),
    Price float,
    Remaining int,
    Type varchar(150),
    Supplier_ID varchar(255) NOT NULL,
    PRIMARY KEY (Desktop_ID),
    FOREIGN KEY (Supplier_ID) REFERENCES Suppliers(Supplier_ID)
);

CREATE TABLE Switches (
    Switch_ID varchar(255) NOT NULL,
    Name varchar(50),
    Price float,
    Remaining int,
    Type varchar(150),
    Supplier_ID varchar(255) NOT NULL,
    PRIMARY KEY (Switch_ID),
    FOREIGN KEY (Supplier_ID) REFERENCES Suppliers(Supplier_ID)
);

CREATE TABLE Mouses (
    Mouse_ID varchar(255) NOT NULL,
    Name varchar(50),
    Price float,
    Remaining int,
    Type varchar(150),
    Supplier_ID varchar(255) NOT NULL,
    PRIMARY KEY (Mouse_ID),
    FOREIGN KEY (Supplier_ID) REFERENCES Suppliers(Supplier_ID)
);

CREATE TABLE Monitors (
    Monitor_ID varchar(255) NOT NULL,
    Name varchar(50),
    Price float,
    Remaining int,
    Type varchar(150),
    Supplier_ID varchar(255) NOT NULL,
    PRIMARY KEY (Monitor_ID),
    FOREIGN KEY (Supplier_ID) REFERENCES Suppliers(Supplier_ID)
);

