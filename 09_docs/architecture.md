Princípios
Durante o desenvolvimento, serão adotados os seguintes princípios:

Modelagem relacional seguindo boas práticas.
Redução de redundância de dados.
Integridade referencial por meio de chaves estrangeiras.
Uso de restrições (NOT NULL, UNIQUE, CHECK e FOREIGN KEY) sempre que necessário.
Nomenclatura padronizada em inglês utilizando snake_case.
Evolução contínua da estrutura do banco conforme novos requisitos forem surgindo.
Estrutura Atual

Atualmente, o banco é composto pelas seguintes entidades:

person: armazena os dados pessoais dos indivíduos cadastrados.
address: armazena os endereços de forma independente.
person_address: tabela associativa responsável por relacionar pessoas e endereços, permitindo que uma pessoa possua vários endereços e que um mesmo endereço possa ser compartilhado entre diferentes pessoas.

Objetivo
O objetivo deste projeto é construir um banco de dados que evolua gradualmente, simulando um ambiente real de desenvolvimento e servindo como base para estudos de SQL, modelagem, otimização de consultas e recursos avançados do PostgreSQL.

Este documento será atualizado conforme a arquitetura do projeto evoluir.