SET SERVEROUTPUT ON;
-- Create Customers table
CREATE TABLE Customers (
    CustomerID NUMBER PRIMARY KEY,
    Name VARCHAR2(50),
    Age NUMBER,
    Balance NUMBER,
    IsVIP VARCHAR2(5)
);

-- Create Loans table
CREATE TABLE Loans (
    LoanID NUMBER PRIMARY KEY,
    CustomerID NUMBER REFERENCES Customers(CustomerID),
    InterestRate NUMBER,
    DueDate DATE
);

-- Insert sample customers
INSERT INTO Customers VALUES (101, 'John', 65, 15000, 'FALSE');
INSERT INTO Customers VALUES (102, 'Mary', 45, 9000, 'FALSE');
INSERT INTO Customers VALUES (103, 'David', 70, 20000, 'FALSE');

-- Insert sample loans
INSERT INTO Loans VALUES (201, 101, 7.5, SYSDATE + 20);
INSERT INTO Loans VALUES (202, 102, 8.0, SYSDATE + 40);
INSERT INTO Loans VALUES (203, 103, 7.0, SYSDATE + 10);

COMMIT;


DECLARE
    -- Scenario 1 cursor: Customers with loans
    CURSOR c_discount IS
        SELECT c.CustomerID, l.LoanID, l.InterestRate, c.Age
        FROM Customers c
        JOIN Loans l ON c.CustomerID = l.CustomerID;

    -- Scenario 2 cursor: Customers eligible for VIP
    CURSOR c_vip IS
        SELECT CustomerID, Balance
        FROM Customers
        WHERE Balance > 10000;

    -- Scenario 3 cursor: Loans due within 30 days
    CURSOR c_reminder IS
        SELECT l.LoanID, c.CustomerID, c.Name, l.DueDate
        FROM Loans l
        JOIN Customers c ON l.CustomerID = c.CustomerID
        WHERE l.DueDate BETWEEN SYSDATE AND SYSDATE + 30;

BEGIN
    -- Scenario 1: Apply 1% discount for customers above 60
    FOR rec IN c_discount LOOP
        IF rec.Age > 60 THEN
            UPDATE Loans
            SET InterestRate = InterestRate - (InterestRate * 0.01)
            WHERE LoanID = rec.LoanID;
            DBMS_OUTPUT.PUT_LINE('Applied 1% discount for CustomerID: ' || rec.CustomerID);
        END IF;
    END LOOP;

    -- Scenario 2: Promote to VIP if balance > $10,000
    FOR rec IN c_vip LOOP
        UPDATE Customers
        SET IsVIP = 'TRUE'
        WHERE CustomerID = rec.CustomerID;
        DBMS_OUTPUT.PUT_LINE('CustomerID ' || rec.CustomerID || ' promoted to VIP.');
    END LOOP;

    -- Scenario 3: Send reminders for loans due in 30 days
    FOR rec IN c_reminder LOOP
        DBMS_OUTPUT.PUT_LINE('Reminder: LoanID ' || rec.LoanID ||
                             ' for Customer ' || rec.Name ||
                             ' (CustomerID: ' || rec.CustomerID ||
                             ') is due on ' || TO_CHAR(rec.DueDate, 'DD-MON-YYYY'));
    END LOOP;

    COMMIT;
END;
/
