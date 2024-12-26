SELECT * FROM employees

SELECT *
FROM employees
WHERE
    SALARY < (
        SELECT AVG(salary)
        FROM employees
    )

----CORRELATED SUBQUERY

/* LIST ALL EMPLOYEES WHOSE SALARY IS LESS
THAN THE AVG SALARY IN THAT DEPARTMENT */

SELECT *
FROM employees e1
WHERE
    SALARY < (
        SELECT AVG(salary)
        FROM employees e2
        WHERE
            e2.DEPARTMENT = e1.DEPARTMENT
    )

SELECT * FROM employees e2 WHERE e2.DEPARTMENT_ID = 30

SELECT AVG(salary) FROM employees e2 WHERE e2.DEPARTMENT_ID = 30

SELECT *
FROM employees e1
WHERE
    SALARY < (
        SELECT AVG(salary)
        FROM employees e2
        WHERE
            e2.DEPARTMENT_ID = 30
    )
    and e1.DEPARTMENT_ID = 30