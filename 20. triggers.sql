CREATE TABLE employees_audit
(
Employee_ID INT,
Operation VARCHAR(10),
UpdatedDate DATETIME
)

CREATE TRIGGER trg_emp_audit
ON employees
AFTER INSERT
AS
BEGIN
INSERT INTO employees_audit
SELECT EMPLOYEE_ID,'INS',GETDATE()
FROM inserted
END


ALTER TRIGGER trg_emp_audit
ON employees
AFTER INSERT,DELETE
AS
BEGIN
INSERT INTO employees_audit
SELECT EMPLOYEE_ID,'INS',GETDATE()
FROM inserted

UNION ALL

SELECT EMPLOYEE_ID,'DEL',GETDATE()
FROM deleted
END


CREATE TRIGGER trg_emp_delete
ON employees_copy
INSTEAD OF DELETE
AS
BEGIN
UPDATE employees_copy
SET active = 0, Enddate = GETDATE()
WHERE EMPLOYEE_ID IN 
(SELECT EMPLOYEE_id FROM deleted)
END