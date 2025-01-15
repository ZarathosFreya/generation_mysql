CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_alunos(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE NOT NULL,
	data_matricula DATE NOT NULL,
    nota DECIMAL(5,2) NOT NULL
);

INSERT INTO tb_alunos (nome, data_nascimento, data_matricula, nota)
VALUES
('Ana Souza', '2005-03-10', '2023-01-20', 8.5),
('Pedro Silva', '2004-11-25', '2023-02-15', 6.0),
('Maria Oliveira', '2006-07-02', '2023-01-10', 9.2),
('João Santos', '2005-09-18', '2023-03-01', 7.8),
('Carla Rodrigues', '2004-05-30', '2023-02-28', 5.5),
('Lucas Ferreira', '2006-01-12', '2023-01-05', 10.0),
('Beatriz Costa', '2005-06-08', '2023-03-15', 7.0),
('Gabriel Pereira', '2004-12-22', '2023-02-10', 8.9);

SELECT * FROM tb_alunos;

SELECT id, nome, nota 
FROM tb_alunos
WHERE nota > 7.00;

SELECT id, nome, nota 
FROM tb_alunos
WHERE nota < 7.00;

UPDATE tb_alunos SET nota = 8.0
WHERE id = 7;

SELECT * FROM tb_alunos;
    