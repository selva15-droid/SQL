use task;
DELIMITER $$

CREATE PROCEDURE update_employee_department(
    IN emp_id INT,
    IN new_department_id INT
)
BEGIN
    DECLARE current_department_id INT;

    
    SELECT department_id INTO current_department_id
    FROM employees
    WHERE employee_id = emp_id;


    IF current_department_id IS NOT NULL AND current_department_id != new_department_id THEN
        UPDATE employees
        SET department_id = new_department_id
        WHERE employee_id = emp_id;
    END IF;
END $$

DELIMITER ;
