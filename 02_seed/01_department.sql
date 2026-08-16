INSERT INTO department (name, description)
VALUES
    ('Technology', 'Desenvolvimento e manutenção de sistemas'),
    ('Finance', 'Gestão financeira e contábil'),
    ('Human Resources', 'Gestão de pessoas e recursos humanos'),
    ('Marketing', 'Marketing e comunicação'),
    ('Sales', 'Vendas e relacionamento com clientes'),
    ('Operations', 'Gestão das operações da empresa'),
    ('Logistics', 'Gestão de transporte e logística'),
    ('Research', 'Pesquisa e desenvolvimento');

/* Aqui você adicionará os managers de cada departamento> */

UPDATE department
SET manager_id = 1
WHERE name = 'Technology';

UPDATE department
SET manager_id = 5
WHERE name = 'Finance';

UPDATE department
SET manager_id = 7
WHERE name = 'Human Resources';

UPDATE department
SET manager_id = 9
WHERE name = 'Marketing';

UPDATE department
SET manager_id = 11
WHERE name = 'Sales';

UPDATE department
SET manager_id = 13
WHERE name = 'Operations';

UPDATE department
SET manager_id = 15
WHERE name = 'Logistics';

UPDATE department
SET manager_id = 17
WHERE name = 'Research';