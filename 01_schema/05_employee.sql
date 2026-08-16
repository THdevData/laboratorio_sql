/*
=========================================================
Tabela: employee

Responsabilidade:
Cadastra dados dos funcíonários fazendo uma ligação com a tabela person e com a tabela department.

=========================================================
*/

CREATE TABLE employee (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    person_id INT UNIQUE NOT NULL,
    department_id INT NOT NULL,
    position VARCHAR(50) NOT NULL,
    salary NUMERIC(12,2) NOT NULL,
    hire_date DATE NOT NULL,

    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_employee_person
        FOREIGN KEY (person_id)
        REFERENCES person(id),

    CONSTRAINT fk_employee_department
        FOREIGN KEY (department_id)
        REFERENCES department(id),

    CONSTRAINT chk_employee_salary
        CHECK (salary > 0)
);