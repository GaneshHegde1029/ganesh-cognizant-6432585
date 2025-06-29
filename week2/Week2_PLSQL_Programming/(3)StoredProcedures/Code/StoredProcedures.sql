CREATE TABLE Accounts (
  AccountID NUMBER PRIMARY KEY,
  AccountType VARCHAR2(20),
  Balance NUMBER(10,2)
);
INSERT INTO Accounts VALUES (101, 'Savings', 10000);
INSERT INTO Accounts VALUES (102, 'Savings', 15000);
INSERT INTO Accounts VALUES (103, 'Current', 20000);
INSERT INTO Accounts VALUES (104, 'Savings', 5000);
COMMIT;


CREATE TABLE Employees (
  EmpID NUMBER PRIMARY KEY,
  Name VARCHAR2(50),
  DepartmentID NUMBER,
  Salary NUMBER(10,2)
);
INSERT INTO Employees VALUES (1, 'Ankit', 10, 50000);
INSERT INTO Employees VALUES (2, 'Sneha', 20, 60000);
INSERT INTO Employees VALUES (3, 'Ravi', 10, 55000);
INSERT INTO Employees VALUES (4, 'Priya', 30, 45000);
COMMIT;

-- ProcessMonthlyInterest
CREATE OR REPLACE PROCEDURE ProcessMonthlyInterest AS
BEGIN
  UPDATE Accounts
  SET Balance = Balance + (Balance * 0.01)
  WHERE AccountType = 'Savings';

  COMMIT;
END;
/

-- UpdateEmployeeBonus
CREATE OR REPLACE PROCEDURE UpdateEmployeeBonus (
  dept_id IN NUMBER,
  bonus_pct IN NUMBER
) AS
BEGIN
  UPDATE Employees
  SET Salary = Salary + (Salary * bonus_pct / 100)
  WHERE DepartmentID = dept_id;

  COMMIT;
END;
/

-- TransferFunds
CREATE OR REPLACE PROCEDURE TransferFunds (
  from_acc IN NUMBER,
  to_acc IN NUMBER,
  amount IN NUMBER
) AS
  insufficient_balance EXCEPTION;
  curr_balance NUMBER;
BEGIN
 
  SELECT Balance INTO curr_balance FROM Accounts WHERE AccountID = from_acc;

  IF curr_balance < amount THEN
    RAISE insufficient_balance;
  END IF;

  UPDATE Accounts
  SET Balance = Balance - amount
  WHERE AccountID = from_acc;

  UPDATE Accounts
  SET Balance = Balance + amount
  WHERE AccountID = to_acc;

  COMMIT;

EXCEPTION
  WHEN insufficient_balance THEN
    DBMS_OUTPUT.PUT_LINE('Transfer failed: Insufficient balance.');
  WHEN NO_DATA_FOUND THEN
    DBMS_OUTPUT.PUT_LINE('Transfer failed: Invalid account ID.');
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('An unexpected error occurred.');
END;
/


-- Applying 1% interest to all savings accounts
BEGIN
  ProcessMonthlyInterest;
END;
/

-- Adding 10% bonus to employees in Department 10
BEGIN
  UpdateEmployeeBonus(10, 10);
END;
/

-- Transfering 2000 from Account 101 to Account 103
BEGIN
  TransferFunds(101, 103, 2000);
END;
/
  
SELECT * FROM Accounts;
SELECT * FROM Employees;
