SET SERVEROUTPUT ON;

-- Drop tables if already exist
BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE Accounts';
EXCEPTION WHEN OTHERS THEN NULL;
END;
/

BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE Employees';
EXCEPTION WHEN OTHERS THEN NULL;
END;
/

-------------------------------------------------------
-- Create Accounts table
CREATE TABLE Accounts (
    AccountID NUMBER PRIMARY KEY,
    CustomerID NUMBER,
    AccountType VARCHAR2(20),
    Balance NUMBER
);

-- Insert sample data into Accounts
INSERT INTO Accounts VALUES (101, 1, 'Savings', 5000);
INSERT INTO Accounts VALUES (102, 2, 'Savings', 3000);
INSERT INTO Accounts VALUES (103, 3, 'Current', 7000);
INSERT INTO Accounts VALUES (104, 4, 'Savings', 10000);
COMMIT;

-------------------------------------------------------
-- Create Employees table
CREATE TABLE Employees (
    EmployeeID NUMBER PRIMARY KEY,
    Name VARCHAR2(50),
    DepartmentID NUMBER,
    Salary NUMBER
);

-- Insert sample data into Employees
INSERT INTO Employees VALUES (201, 'Alice', 10, 40000);
INSERT INTO Employees VALUES (202, 'Bob', 20, 35000);
INSERT INTO Employees VALUES (203, 'Charlie', 10, 45000);
INSERT INTO Employees VALUES (204, 'David', 30, 30000);
COMMIT;

-------------------------------------------------------
-- Scenario 1: ProcessMonthlyInterest
CREATE OR REPLACE PROCEDURE ProcessMonthlyInterest AS
BEGIN
    UPDATE Accounts
    SET Balance = Balance + (Balance * 0.01)
    WHERE AccountType = 'Savings';

    DBMS_OUTPUT.PUT_LINE('Monthly interest processed for all savings accounts.');
    COMMIT;
END;
/

-------------------------------------------------------
-- Scenario 2: UpdateEmployeeBonus
CREATE OR REPLACE PROCEDURE UpdateEmployeeBonus (
    p_DepartmentID IN NUMBER,
    p_BonusPercent IN NUMBER
) AS
BEGIN
    UPDATE Employees
    SET Salary = Salary + (Salary * (p_BonusPercent / 100))
    WHERE DepartmentID = p_DepartmentID;

    DBMS_OUTPUT.PUT_LINE('Bonus of ' || p_BonusPercent || '% applied to Department ID: ' || p_DepartmentID);
    COMMIT;
END;
/

-------------------------------------------------------
-- Scenario 3: TransferFunds
CREATE OR REPLACE PROCEDURE TransferFunds (
    p_SourceAccountID IN NUMBER,
    p_TargetAccountID IN NUMBER,
    p_Amount IN NUMBER
) AS
    v_SourceBalance NUMBER;
BEGIN
    SELECT Balance INTO v_SourceBalance
    FROM Accounts
    WHERE AccountID = p_SourceAccountID
    FOR UPDATE;

    IF v_SourceBalance >= p_Amount THEN
        UPDATE Accounts
        SET Balance = Balance - p_Amount
        WHERE AccountID = p_SourceAccountID;

        UPDATE Accounts
        SET Balance = Balance + p_Amount
        WHERE AccountID = p_TargetAccountID;

        DBMS_OUTPUT.PUT_LINE('Transferred ' || p_Amount ||
                             ' from AccountID ' || p_SourceAccountID ||
                             ' to AccountID ' || p_TargetAccountID);
        COMMIT;
    ELSE
        DBMS_OUTPUT.PUT_LINE('Insufficient balance in AccountID ' || p_SourceAccountID);
    END IF;
END;
/

-------------------------------------------------------
-- Testing Stored Procedures

-- Scenario 1: Apply monthly interest
EXEC ProcessMonthlyInterest;

-- Scenario 2: Apply 15% bonus to Department ID 10
EXEC UpdateEmployeeBonus(10, 15);

-- Scenario 3: Transfer 1000 from AccountID 104 to AccountID 103
EXEC TransferFunds(104, 103, 1000);

-------------------------------------------------------
-- Verify Data

-- Check updated Accounts
SELECT * FROM Accounts;

-- Check updated Employees
SELECT * FROM Employees;
