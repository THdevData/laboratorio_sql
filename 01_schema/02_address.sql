/*
=========================================================
Tabela: address

Responsabilidade:
Armazenar os endereços cadastrado no sistema.

Relacionamentos:
- address 1:N person_address
=========================================================
*/

CREATE TABLE address (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    street VARCHAR(150) NOT NULL,
    number VARCHAR(10) NOT NULL,
    complement VARCHAR(150),
    neighborhood VARCHAR(100) NOT NULL,
    city VARCHAR(100) NOT NULL,
    state VARCHAR(50) NOT NULL,
    zip_code CHAR(8) NOT NULL,
    country VARCHAR(50) NOT NULL DEFAULT 'Brazil',
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT chk_street_not_empty
        CHECK (trim(street) != ''),
    CONSTRAINT chk_zip_code
        CHECK (length(zip_code) = 8)
);