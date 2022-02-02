CREATE DATABASE TelWide;

CREATE TABLE Branches (
    BranchID varchar(255) NOT NULL,
    Name varchar(200),
    NoOfEmployees int,
    Location varchar(100),
    PRIMARY KEY (BranchID)
);

CREATE TABLE Managers (
    ManagerID varchar(255) NOT NULL,
    BranchID varchar(255) NOT NULL,
    Name varchar(200),
    Email varchar(200),
    PhoneNumber varchar(50),
    PRIMARY KEY (ManagerID),
    FOREIGN KEY (BranchID) REFERENCES Branches(BranchID)
);

CREATE TABLE Employees (
    EmployeeID varchar(255) NOT NULL,
    BranchID varchar(255) NOT NULL,
    Name varchar(200),
    Email varchar(200),
    PhoneNumber varchar(50),
    PRIMARY KEY (EmployeeID),
    FOREIGN KEY (BranchID) REFERENCES Branches(BranchID)
);

CREATE TABLE Departments (
    DeptID varchar(255) NOT NULL,
    NoOfEmployees int,
    Name varchar(200),
    PRIMARY KEY (DeptID)
);

CREATE TABLE ShareHolders (
    ShareHolderID varchar(255) NOT NULL,
    Name varchar(200),
    Email varchar(200),
    PhoneNumber varchar(50),
    Amount float,
    PRIMARY KEY (ShareHolderID)
);

CREATE TABLE Dividends (
    DividendID varchar(255) NOT NULL,
    ShareHolderID varchar(255) NOT NULL,
    Amount float,
    PRIMARY KEY (DividendID),
    FOREIGN KEY (ShareHolderID) REFERENCES ShareHolders(ShareHolderID)
);

CREATE TABLE MBankingAgents (
    AgentID varchar(255) NOT NULL,
   	Name varchar(200),
    Email varchar(200),
    PhoneNumber varchar(50),
    location varchar(100),
    PRIMARY KEY (AgentID)
);

CREATE TABLE Customers (
    CustID varchar(255) NOT NULL,
   	Name varchar(200),
    Email varchar(200),
    PhoneNumber varchar(50),
    PRIMARY KEY (CustID)
);

CREATE TABLE Simcards (
    CardID varchar(255) NOT NULL,
    CustID varchar(255),
   	CardStatus int,
    PRIMARY KEY (CardID),
    FOREIGN KEY (CustID) REFERENCES Customers(CustID)
);

CREATE TABLE BlockedCards (
    CardID varchar(255) NOT NULL,
    Cause varchar(255),
    FOREIGN KEY (CardID) REFERENCES Simcards(CardID)
);

CREATE TABLE DataBundle (
    CardID varchar(255) NOT NULL,
    Amount float,
    ExpDate date,
    FOREIGN KEY (CardID) REFERENCES Simcards(CardID)
);

CREATE TABLE Airtime (
    CardID varchar(255) NOT NULL,
    Amount float,
    ExpDate date,
    FOREIGN KEY (CardID) REFERENCES Simcards(CardID)
);

CREATE TABLE MessageBundles (
    CardID varchar(255) NOT NULL,
    Amount float,
    ExpDate date,
    FOREIGN KEY (CardID) REFERENCES Simcards(CardID)
);

CREATE TABLE AirtimeDebts (
    CardID varchar(255) NOT NULL,
    Amount float,
    DueDate date,
    FOREIGN KEY (CardID) REFERENCES Simcards(CardID)
);

CREATE TABLE DueDebts (
    CardID varchar(255) NOT NULL,
    Amount float,
    Penalty int,
    FOREIGN KEY (CardID) REFERENCES Simcards(CardID)
);

CREATE TABLE BongaPoints(
    CardID varchar(255) NOT NULL,
    Amount float,
    FOREIGN KEY (CardID) REFERENCES Simcards(CardID)
);

CREATE TABLE Offers (
    OfferID varchar(255) NOT NULL,
    CardID varchar(255) NOT NULL,
    Name varchar(255),
    ExpDate date,
    PRIMARY KEY (OfferID),
    FOREIGN KEY (CardID) REFERENCES Simcards(CardID)
);

CREATE TABLE MobileBanking(
    CardID varchar(255) NOT NULL,
   	OpeningDate date,
    Balance float,
    FOREIGN KEY (CardID) REFERENCES Simcards(CardID)
);

CREATE TABLE Suppliers (
    SupplierID varchar(255) NOT NULL,
    Name varchar(200),
    Email varchar(200),
    PhoneNumber varchar(50),
    PRIMARY KEY (SupplierID)
);

CREATE TABLE Vehicles(
    RegID varchar(255) NOT NULL,
    EmployeeID varchar(255),
    SupplierID varchar(255),
   	Location varchar(100),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID),
    FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID)
);

CREATE TABLE WorkStations(
    WSID varchar(255) NOT NULL,
    EmployeeID varchar(255),
    SupplierID varchar(255),
   	DeptID varchar(255),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID),
    FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID),
    FOREIGN KEY (DeptID) REFERENCES Departments(DeptID )
);

CREATE TABLE HomeFibre(
    CustID varchar(255) NOT NULL,
    Location varchar(100),
    ExpDate date,
   	Size int,
    FOREIGN KEY (CustID) REFERENCES Customers(CustID)
);


