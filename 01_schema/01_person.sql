/*
=========================================================
Tabela: person

Responsabilidade:
Armazenar os dados pessoais de qualquer indivíduo
cadastrado no sistema.

Relacionamentos:
- person 1:N person_address
=========================================================
*/

CREATE TABLE person (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    birth_date DATE NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    phone VARCHAR(20),
    cpf CHAR(11) NOT NULL UNIQUE,
    gender VARCHAR(20),
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT chk_birth_date
        CHECK (birth_date <= CURRENT_DATE),
    CONSTRAINT chk_cpf_length
        CHECK (length(cpf) = 11)
);