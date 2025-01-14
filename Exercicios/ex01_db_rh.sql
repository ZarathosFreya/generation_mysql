CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf CHAR(14) NOT NULL,
    data_admissao DATE NOT NULL,
    cargo CHAR(50) NOT NULL,
    salario_base DECIMAL(9,2) NOT NULL
);

INSERT INTO tb_colaboradores(nome, cpf, data_admissao, cargo, salario_base)
VALUES 
	('Ana Silva', '12345678901', '2020-03-15', 'Analista de Sistemas', 5500.00),
    ('Pedro Oliveira', '98765432109', '2021-07-01', 'Gerente de Projetos', 8000.00),
    ('Maria Souza', '45678901234', '2019-11-20', 'Desenvolvedor Front-end', 4800.00),
    ('João Santos', '78901234567', '2022-01-10', 'Analista de Marketing', 6200.00),
    ('Carla Rodrigues', '01234567890', '2023-05-05', 'Estagiário de TI', 1800.00);
    
SELECT * FROM tb_colaboradores;

SELECT id, nome AS nome_colaborador, cpf, cargo, CONCAT('R$ ', FORMAT(salario_base, 2, 'pt_BR')) 
AS salario 
FROM tb_colaboradores
WHERE salario_base > 2000.00;

SELECT id, nome AS nome_colaborador, cpf, cargo, CONCAT('R$ ', FORMAT(salario_base, 2, 'pt_BR')) 
AS salario 
FROM tb_colaboradores
WHERE salario_base < 2000.00;  

UPDATE tb_colaboradores SET cargo = 'Desenvolvedor Jr.', salario_base = 2300.00 
WHERE id = 5;

SELECT * FROM tb_colaboradores;


    