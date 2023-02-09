
SELECT employee.id AS "ID",
CONCAT (employee.first_name," ", employee.last_name) AS "Employee",
role.title AS "Title",
department.name AS "Department",
role.salary AS "Salary",
CONCAT (manager.first_name," ", manager.last_name) AS "Manager"
FROM employee
LEFT JOIN role
ON employee.role_id = role.id
LEFT JOIN department
ON role.department_id = department.id
LEFT JOIN employee manager
ON manager.id = employee.manager_id;

SELECT employee.id AS "ID",
CONCAT (employee.first_name," ", employee.last_name) AS "Managers",
role.title AS "Title",
department.name AS "Department",
role.salary AS "Salary"
FROM employee
LEFT JOIN role
ON employee.role_id = role.id
LEFT JOIN department
ON role.department_id = department.id
WHERE employee.manager_id IS NULL;

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES (?, ?, ?, ?);

UPDATE employee
SET role_id = ?
WHERE id = ?;

UPDATE employee
SET manager_id = ?
WHERE id = ?;

DELETE FROM employee
WHERE id = ?;

SELECT role.id AS "ID",
role.title AS "Title",
department.name AS "Department",
role.salary AS "Salary"
FROM role
JOIN department ON department.id = role.department_id;

INSERT INTO role (title, salary, department_id)
VALUES (?, ?, ?);

DELETE FROM role
WHERE id = ?;

SELECT department.id AS "ID",
department.name AS "Department"
 FROM department;

INSERT INTO department (name)
VALUES (?);

DELETE FROM department
WHERE id = ?;

SELECT employee.id,
CONCAT (employee.first_name," ", employee.last_name) AS "name",
employee.manager_id,
CONCAT (manager.first_name," ", manager.last_name) AS "manager_name",
role.id AS "role_id",
role.title
FROM employee
RIGHT JOIN role
ON role.id = employee.role_id
LEFT JOIN employee manager
ON manager.id = employee.manager_id;

SELECT role.id, role.title
FROM role;

SELECT *
FROM department;