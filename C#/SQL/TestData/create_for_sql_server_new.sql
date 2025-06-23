
CREATE TABLE BelongTo (
       BelongID             INTEGER NOT NULL,
       StartDate            DATETIME,
       EndDate              DATETIME,
       DepartmentID         INTEGER,
       EmployeeID           INTEGER
);


ALTER TABLE BelongTo
       ADD PRIMARY KEY (BelongID);


CREATE TABLE Categories (
       CategoryID           INTEGER NOT NULL,
       CategoryName         NVARCHAR(100)
);


ALTER TABLE Categories
       ADD PRIMARY KEY (CategoryID);


CREATE TABLE CustomerClasses (
       CustomerClassID      INTEGER NOT NULL,
       CustomerClassName    NVARCHAR(100)
);


ALTER TABLE CustomerClasses
       ADD PRIMARY KEY (CustomerClassID);


CREATE TABLE Customers (
       CustomerID           INTEGER NOT NULL,
       CustomerCode         INTEGER,
       CustomerName         NVARCHAR(100),
       Address              NVARCHAR(100),
       CustomerClassID      INTEGER,
       PrefecturalID        INTEGER
);


ALTER TABLE Customers
       ADD PRIMARY KEY (CustomerID);


CREATE TABLE Departments (
       DepartmentID         INTEGER NOT NULL,
       DepartmentName       NVARCHAR(100)
);


ALTER TABLE Departments
       ADD PRIMARY KEY (DepartmentID);


CREATE TABLE Employees (
       EmployeeID           INTEGER NOT NULL,
       EmployeeName         NVARCHAR(100),
       Height               NUMERIC,
       EMail                NVARCHAR(100),
       Weight               NUMERIC,
       HireFiscalYear       INTEGER,
       Birthday             DATETIME,
       BloodType            NVARCHAR(2)
);


ALTER TABLE Employees
       ADD PRIMARY KEY (EmployeeID);


CREATE TABLE Prefecturals (
       PrefecturalID        INTEGER NOT NULL,
       PrefecturalName      NVARCHAR(100)
);


ALTER TABLE Prefecturals
       ADD PRIMARY KEY (PrefecturalID);


CREATE TABLE Products (
       ProductID            INTEGER NOT NULL,
       ProductCode          INTEGER,
       ProductName          NVARCHAR(100),
       Price                NUMERIC,
       CategoryID           INTEGER
);


ALTER TABLE Products
       ADD PRIMARY KEY (ProductID);


CREATE TABLE Salary (
       SalaryID             INTEGER NOT NULL,
       PayDate              DATETIME,
       Amount               NUMERIC,
       EmployeeID           INTEGER
);


ALTER TABLE Salary
       ADD PRIMARY KEY (SalaryID);


CREATE TABLE Sales (
       SaleID               INTEGER NOT NULL,
       Quantity             NUMERIC,
       CustomerID           INTEGER,
       ProductID            INTEGER,
       EmployeeID           INTEGER,
       SaleDate             DATETIME
);


ALTER TABLE Sales
       ADD PRIMARY KEY (SaleID);
