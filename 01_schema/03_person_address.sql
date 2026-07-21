/*
=========================================================
Tabela: person_address

Responsabilidade:
Faz a vinculo entre as tabelas person e address

Relacionamentos:
- person_address N:1 person
- person_address N:1 address
=========================================================
*/

CREATE TABLE person_address (
    person_id INT NOT NULL,
    address_id INT NOT NULL,
    address_type VARCHAR(20) NOT NULL,
    is_primary BOOLEAN NOT NULL DEFAULT FALSE,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT pk_person_address
        PRIMARY KEY (person_id, address_id),
    CONSTRAINT fk_person_address_person
        FOREIGN KEY (person_id)
        REFERENCES person(id)
        ON DELETE CASCADE,
    CONSTRAINT fk_person_address_address
        FOREIGN KEY (address_id)
        REFERENCES address(id)
        ON DELETE CASCADE,
    CONSTRAINT chk_address_type
        CHECK (
            address_type IN (
                'Home',
                'Work',
                'Billing',
                'Shipping'
            )
        )

);