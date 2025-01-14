CREATE DATABASE db_produtos;

USE db_produtos;

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome CHAR(50) NOT NULL,
    descricao TEXT NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    quantidade_estoque INT NOT NULL 
);

INSERT INTO tb_produtos (nome, descricao, preco, quantidade_estoque)
VALUES
('Notebook Dell Inspiron', 'Notebook Dell Inspiron 15 3000, 8GB RAM, 256GB SSD', 2799.90, 20),
('O Senhor dos Anéis', 'A Sociedade do Anel - J.R.R. Tolkien', 49.99, 50),
('Fone de Ouvido Bluetooth', 'Fone de Ouvido Bluetooth JBL Tune 500BT', 199.90, 10),
('Smart TV 65" 4K', 'Smart TV LG 65" 4K UHD ThinQ AI', 4299.00, 5),
('Caneta Esferográfica', 'Caneta Esferográfica Bic Cristal Azul - Caixa com 50', 24.99, 100),
('God of War Ragnarök (PS5)', 'Jogo God of War Ragnarök para Playstation 5', 299.99, 20),
('Geladeira Frost Free', 'Geladeira Brastemp Frost Free Duplex 375 Litros', 3499.00, 8),
('Mouse Gamer', 'Mouse Gamer Logitech G203 LIGHTSYNC RGB', 149.90, 30);

SELECT * FROM tb_produtos;

SELECT id, nome AS nome_produto, quantidade_estoque, CONCAT('R$ ', FORMAT(preco, 2, 'pt_BR'))
AS preco 
FROM tb_produtos
WHERE preco > 500.00;

SELECT id, nome AS nome_produto, quantidade_estoque, CONCAT('R$ ', FORMAT(preco, 2, 'pt_BR'))
AS preco 
FROM tb_produtos
WHERE preco < 500.00;

UPDATE tb_produtos SET preco = 150.00 
WHERE id = 6;

SELECT * FROM tb_produtos;




 

	