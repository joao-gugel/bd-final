-- INSERINDO DADOS NA TABELA ESTOQUE
INSERT INTO estoque (localizacao) VALUES
('Estoque A'),
('Estoque B'),
('Estoque C'),
('Estoque D'),
('Estoque E');

-- INSERINDO DADOS NA TABELA PRODUTO
INSERT INTO produto (nome, preco, cor, tamanho, quantidade_estoque, categoria, id_estoque) VALUES
('Camiseta Básica Feminina', 2990, 'Branca', 'M', 50, 'Camisetas', 1),
('Jeans Masculino Slim', 8990, 'Azul', '42', 25, 'Calças', 2),
('Vestido Floral', 12990, 'Rosa', 'P', 15, 'Vestidos', 1),
('Camisa Social Masculina', 15990, 'Branca', 'G', 20, 'Camisas', 2),
('Blusa Infantil Unicórnio', 3490, 'Rosa', '8', 30, 'Infantil', 3),
('Saia Jeans', 6990, 'Azul', 'M', 18, 'Saias', 1),
('Bermuda Masculina', 4990, 'Preta', '40', 35, 'Bermudas', 2);

-- INSERINDO DADOS NA TABELA VENDEDOR
INSERT INTO vendedor (nome, cpf, data_admissao) VALUES
('Maria Silva Santos', '12345678901', '2023-01-15 08:00:00'),
('João Pedro Oliveira', '98765432109', '2023-03-22 09:30:00'),
('Ana Carolina Lima', '45678912345', '2022-11-10 08:15:00'),
('Carlos Eduardo Souza', '78912345678', '2024-02-05 10:00:00'),
('Fernanda Costa Alves', '32165498732', '2023-07-18 08:45:00');

-- INSERINDO DADOS NA TABELA CLIENTE
INSERT INTO cliente (nome, cpf, telefone, email, endereco) VALUES
('Beatriz Ferreira', '11122233344', '11987654321', 'beatriz.ferreira@email.com', 'Rua das Flores, 123 - São Paulo/SP'),
('Roberto Machado', '55566677788', '11976543210', 'roberto.machado@email.com', 'Av. Principal, 456 - Rio de Janeiro/RJ'),
('Larissa Gomes', '99988877766', '11965432109', 'larissa.gomes@email.com', 'Rua do Comércio, 789 - Belo Horizonte/MG'),
('Diego Pereira', '33344455566', '11954321098', 'diego.pereira@email.com', 'Praça Central, 101 - Porto Alegre/RS'),
('Camila Rodrigues', '77788899900', '11943210987', 'camila.rodrigues@email.com', 'Rua Nova, 202 - Curitiba/PR'),
('André Martins', '66677788899', '11932109876', 'andre.martins@email.com', 'Av. Brasil, 303 - Salvador/BA');

-- INSERINDO DADOS NA TABELA PAGAMENTO
INSERT INTO pagamento (metodo) VALUES
('Cartão de Crédito'),
('Cartão de Débito'),
('PIX'),
('Dinheiro'),
('Parcelado');

-- INSERINDO DADOS NA TABELA COMPRA
INSERT INTO compra (status, data, id_vendedor, id_cliente, id_pagamento) VALUES
('finalizada', '2025-06-15 14:30:00', 1, 1, 1),
('finalizada', '2025-06-16 10:15:00', 2, 2, 3),
('processando', '2025-06-17 11:45:00', 3, 3, 2),
('finalizada', '2025-06-17 15:20:00', 1, 4, 4),
('pendente', '2025-06-18 09:10:00', 4, 5, 5),
('finalizada', '2025-06-18 12:30:00', 5, 6, 1);

-- INSERINDO DADOS NA TABELA ITEM_COMPRA
INSERT INTO item_compra (quantidade, preco_unitario, id_compra, id_produto) VALUES
(2, 2990, 1, 1),  -- 2 camisetas básicas
(1, 12990, 1, 3), -- 1 vestido floral
(1, 8990, 2, 2),  -- 1 jeans masculino
(1, 15990, 3, 4), -- 1 camisa social
(2, 3490, 3, 5),  -- 2 blusas infantis
(1, 6990, 4, 6),  -- 1 saia jeans
(3, 4990, 5, 7),  -- 3 bermudas masculinas
(1, 2990, 6, 1),  -- 1 camiseta básica
(1, 8990, 6, 2);  -- 1 jeans masculino

-- INSERINDO DADOS NA TABELA NOTA_FISCAL
INSERT INTO nota_fiscal (numero, chave_acesso, data_emissao, valor_total, id_compra) VALUES
('000000001', '35240614200166000100550010000000015182039021', '2025-06-15 14:35:00', 18970, 1),
('000000002', '35240614200166000100550010000000025182039022', '2025-06-16 10:20:00', 8990, 2),
('000000003', '35240614200166000100550010000000035182039023', '2025-06-17 15:25:00', 6990, 4),
('000000004', '35240614200166000100550010000000045182039024', '2025-06-18 12:35:00', 11980, 6);