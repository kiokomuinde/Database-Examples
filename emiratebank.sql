CREATE DATABASE Emirate_Bank;

CREATE TABLE Customers(
    Cust_Id varchar(255) NOT NULL,
    Cust_Name varchar(255),
    Phone varchar(20),
    Email varchar(255),
    Address varchar(255),
    SS_Num varchar(50),
    PRIMARY KEY (Cust_Id)
);

CREATE TABLE Branches(
    Branch_Id varchar(255) NOT NULL,
    Branch_Email varchar(255),
    Phone varchar(20),
    No_Employees varchar(255),
    Address varchar(255),
    PRIMARY KEY (Branch_Id)
);

CREATE TABLE Employees (
    Employee_Id varchar(255) NOT NULL,
    Name varchar(255),
    Phone varchar(20),
    Email varchar(255),
    Address varchar(255),
    SSNumber varchar(50),
    PRIMARY KEY (Employee_Id)
);

CREATE TABLE Managers (
    Manager_Id varchar(255) NOT NULL,
    Employee_Id varchar(255) NOT NULL,
    Branch_Id varchar(255) NOT NULL,
    PRIMARY KEY (Manager_Id),
    FOREIGN KEY (Employee_Id) REFERENCES Employees (Employee_Id),
    FOREIGN KEY (Branch_Id) REFERENCES Branches (Branch_Id)
);

CREATE TABLE Accounts (
    Acc_Id varchar(255) NOT NULL,
    Cust_Id varchar(255) NOT NULL,
    Type int,
    Date_Opening date,
    Balance float,
    PRIMARY KEY (Acc_Id),
    FOREIGN KEY (Cust_Id) REFERENCES Customers (Cust_Id)
);

CREATE TABLE Cards (
    
    Card_Id varchar(255) NOT NULL,
    Acc_Id varchar(255) NOT NULL,
    Type int,
    PRIMARY KEY (Card_Id ),
    FOREIGN KEY (Acc_Id) REFERENCES Accounts (Acc_Id)
);

CREATE TABLE Deposits (
    
    Dep_Id varchar(255) NOT NULL,
    Cust_Id varchar(255) NOT NULL,
    Branch varchar(255) NOT NULL,
    D_Date date,
    Amount float,
    PRIMARY KEY (Dep_Id ),
    FOREIGN KEY (Cust_Id) REFERENCES Customers (Cust_Id),
    FOREIGN KEY (Branch) REFERENCES Branches (Branch_Id)
);

CREATE TABLE Withdrawals (
    
    Wdt_Id varchar(255) NOT NULL,
    Cust_Id varchar(255) NOT NULL,
    Branch varchar(255) NOT NULL,
    W_Date date,
    Amount float,
    PRIMARY KEY (Wdt_Id),
    FOREIGN KEY (Cust_Id) REFERENCES Customers (Cust_Id),
    FOREIGN KEY (Branch) REFERENCES Branches (Branch_Id)
);

CREATE TABLE Mortgage (
    
    Mortgage_Id varchar(255) NOT NULL,
    Cust_Id varchar(255) NOT NULL,
    Item varchar(255),
    Req_Date date,
    Amount float,
    PRIMARY KEY (Mortgage_Id),
    FOREIGN KEY (Cust_Id) REFERENCES Customers (Cust_Id)
);

CREATE TABLE Loans (
    
    Loan_Id varchar(255) NOT NULL,
    Cust_Id varchar(255) NOT NULL,
    Interest_Rate float,
    Issue_Date date,
    Amount float,
    PRIMARY KEY (Loan_Id),
    FOREIGN KEY (Cust_Id) REFERENCES Customers (Cust_Id)
);

CREATE TABLE Defaulted_Loans (
    
    DL_Id varchar(255) NOT NULL,
    Loan_Id varchar(255) NOT NULL, 
    Penalty_Accrued float,
    Amount float,
    PRIMARY KEY (DL_Id),
    FOREIGN KEY (Loan_Id) REFERENCES Loans (Loan_Id)
);

CREATE TABLE Teller_Machine (
    
    TM_Id varchar(255) NOT NULL,
    Branch_Id varchar(255) NOT NULL, 
    PRIMARY KEY (TM_Id ),
    FOREIGN KEY (Branch_Id) REFERENCES Branches (Branch_Id)
);

CREATE TABLE Cheques (
    
    Cheque_Id varchar(255) NOT NULL,
    From_Id varchar(255) NOT NULL, 
    To_Id varchar(255) NOT NULL,
    Release_Date date,
    Amount float,
    PRIMARY KEY (Cheque_Id),
    FOREIGN KEY (From_Id) REFERENCES Customers (Cust_Id),
    FOREIGN KEY (To_Id) REFERENCES Customers (Cust_Id)
);

CREATE TABLE Rejected_Cheques (
    
    Rej_Cheq_Id varchar(255) NOT NULL, 
    Cheque_Id varchar(255) NOT NULL,    
    Reason varchar(255),
    PRIMARY KEY (Rej_Cheq_Id),
    FOREIGN KEY (Cheque_Id) REFERENCES Cheques (Cheque_Id)
);

CREATE TABLE Departments(
    Dept_Id varchar(255) NOT NULL,
    Name varchar(255),
    Email varchar(255),
    Phone varchar(20),
    PRIMARY KEY (Dept_Id)
);

CREATE TABLE Shareholders(
    SH_Id varchar(255) NOT NULL,
    Name varchar(255),
    Email varchar(255),
    SSNumber varchar(20),
    Amount float,
    PRIMARY KEY (SH_Id)
);

CREATE TABLE Shares(
    Share_Id varchar(255) NOT NULL,
    Amount float,
    PRIMARY KEY (Share_Id)
);

CREATE TABLE Dividends(
    Dividends_Id varchar(255) NOT NULL,
    SH_Id varchar(255) NOT NULL,
    Amount float,
    PRIMARY KEY (Dividends_Id),
    FOREIGN KEY (SH_Id) REFERENCES Shareholders (SH_Id)
);

CREATE TABLE Agents(
    Agent_Id varchar(255) NOT NULL,
    Name varchar(255),
    Email varchar(255),
    Address varchar(255),
    SSNumber varchar(20),
    Amount float,
    PRIMARY KEY (Agent_Id)
);

CREATE TABLE ATMs(
    ATM_Id varchar(255) NOT NULL,
    Location varchar(255),
    Balance float,
    PRIMARY KEY (ATM_Id)
);