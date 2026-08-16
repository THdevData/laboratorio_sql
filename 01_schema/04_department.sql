/*
=========================================================
Tabela: department

Responsabilidade:
Armazenar os departamentos existentes na empresa.

Relacionamentos:
- department 1:N employee

Atualização prevista:
Incluir manager_id como NOT NULL
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