-- Creating Table Customers and Loans
CREATE TABLE Customers (
    CustomerID NUMBER PRIMARY KEY,
    Age NUMBER,
    InterestRate NUMBER(5,2),
    Balance NUMBER,
    IsVIP VARCHAR2(5)
);
DROP TABLE Customers;

CREATE TABLE Loans (
    LoanID NUMBER PRIMARY KEY,
    CustomerID NUMBER,
    DueDate DATE
);

INSERT INTO Customers VALUES (1, 65, 10.5, 12000, 'FALSE');
INSERT INTO Customers VALUES (2, 45, 11.0, 8000, 'FALSE');
INSERT INTO Customers VALUES (3, 70, 9.5, 15000, 'FALSE');

INSERT INTO Loans VALUES (101, 1, SYSDATE + 10);
INSERT INTO Loans VALUES (102, 2, SYSDATE + 35);
INSERT INTO Loans VALUES (103, 3, SYSDATE + 5);

COMMIT;

-- Applying 1% interest discount for age > 60
BEGIN
    FOR cust_rec IN (
        SELECT CustomerID, InterestRate
        FROM Customers
        WHERE Age > 60
    ) LOOP
        UPDATE Customers
        SET InterestRate = InterestRate - 1
        WHERE CustomerID = cust_rec.CustomerID;
    END LOOP;
END;
/

-- Seting IsVIP = 'TRUE' for Balance > 10000
BEGIN
    FOR vip_rec IN (
        SELECT CustomerID
        FROM Customers
        WHERE Balance > 10000
    ) LOOP
        UPDATE Customers
        SET IsVIP = 'TRUE'
        WHERE CustomerID = vip_rec.CustomerID;
    END LOOP;
END;
/

-- Printing reminders for loans due within 30 days
SET SERVEROUTPUT ON;

BEGIN
    FOR loan_rec IN (
        SELECT LoanID, CustomerID, DueDate
        FROM Loans
        WHERE DueDate BETWEEN SYSDATE AND SYSDATE + 30
    ) LOOP
        DBMS_OUTPUT.PUT_LINE('Reminder: Loan ID ' || loan_rec.LoanID ||
                             ' for Customer ID ' || loan_rec.CustomerID ||
                             ' is due on ' || TO_CHAR(loan_rec.DueDate, 'DD-MON-YYYY'));
    END LOOP;
END;
/

SELECT * FROM Customers;
SELECT * FROM Loans;
