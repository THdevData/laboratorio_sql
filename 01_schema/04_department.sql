/*
=========================================================
Tabela: department

Responsabilidade:
Armazenar os departamentos existentes na empresa.

Obs:
managr_id deve ser inserido após o povoamento das tabelas person e employee
=========================================================
*/

CREATE TABLE department(
	id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	name VARCHAR(100) UNIQUE NOT NULL,
	description TEXT,
	created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT chk_department_name
        CHECK (TRIM(name) != ' ')
);

/* Após o povoamento das tabelas person e employee: */

ALTER TABLE department ADD COLUMN manager_id INT;

ALTER TABLE department ADD CONSTRAINT fk_department_manager
FOREIGN KEY (manager_id)
REFERENCES employee(id)