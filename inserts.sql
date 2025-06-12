INSERT INTO estoque (localizacao) VALUES
('Setor A - Prateleira 1'),
('Setor B - Prateleira 3'),
('Setor C - Prateleira 2'),
('Setor D - Prateleira 5'),
('Setor E - Prateleira 4');

INSERT INTO produto (nome, preco, cor, tamanho, quantidade_estoque, categoria, id_estoque) VALUES
('Camiseta Basic', 4990, 'Branca', 'M', 50, 'Vestuário', 1),
('Calça Jeans Slim', 12990, 'Azul', '42', 30, 'Vestuário', 2),
('Tênis Esportivo', 19990, 'Preto', '40', 20, 'Calçados', 3),
('Relógio Digital', 5990, 'Prata', 'Único', 15, 'Acessórios', 4),
('Mochila Escolar', 8990, 'Vermelha', 'Único', 25, 'Acessórios', 5),
('Blusa de Frio', 7990, 'Cinza', 'G', 18, 'Vestuário', 1),
('Short Esportivo', 3990, 'Preto', 'M', 35, 'Vestuário', 2);

INSERT INTO vendedor (nome, cpf, data_admissao) VALUES
('João Silva', '12345678901', '2020-05-15 09:00:00'),
('Maria Santos', '98765432109', '2021-02-20 08:30:00'),
('Carlos Oliveira', '45678912304', '2019-11-10 10:15:00'),
('Ana Pereira', '32165498707', '2022-01-05 09:45:00');

INSERT INTO cliente (nome, cpf, telefone, email, endereco) VALUES
('Pedro Alves', '11122233344', '11987654321', 'pedro@email.com', 'Rua A, 123 - Centro - São Paulo/SP'),
('Mariana Costa', '55566677788', '21912345678', 'mariana@email.com', 'Av. B, 456 - Jardins - Rio de Janeiro/RJ'),
('Lucas Mendes', '99988877766', NULL, 'lucas@email.com', 'Rua C, 789 - Vila Nova - Belo Horizonte/MG'),
('Fernanda Lima', '44433322211', '31998765432', 'fernanda@email.com', 'Av. D, 321 - Centro - Curitiba/PR'),
('Roberto Souza', '77788899900', '41987654321', 'roberto@email.com', 'Rua E, 654 - Batel - Porto Alegre/RS');

INSERT INTO pagamento (metodo) VALUES
('Cartão de Crédito'),
('Cartão de Débito'),
('PIX'),
('Boleto Bancário'),
('Dinheiro');

INSERT INTO compra (status, data, id_vendedor, id_cliente, id_pagamento) VALUES
('Concluída', '2023-05-10 14:30:00', 1, 1, 1),
('Concluída', '2023-05-12 16:45:00', 2, 2, 2),
('Em processamento', '2023-05-15 11:20:00', 3, 3, 3),
('Cancelada', '2023-05-18 09:15:00', 4, 4, 4),
('Concluída', '2023-05-20 18:30:00', 1, 5, 5);

INSERT INTO item_compra (quantidade, preco_unitario, id_compra, id_produto) VALUES
(2, 4990, 1, 1),
(1, 12990, 1, 2),
(1, 19990, 2, 3),
(3, 5990, 3, 4),
(1, 8990, 4, 5),
(2, 7990, 5, 6),
(1, 3990, 5, 7);

INSERT INTO nota_fiscal (numero, chave_acesso, data_emissao, valor_total, id_compra) VALUES
('000000001', '12345678901234567890123456789012345678901234', '2023-05-10 14:35:00', 22970, 1),
('000000002', '98765432109876543210987654321098765432109876', '2023-05-12 16:50:00', 19990, 2),
('000000003', '56789012345678901234567890123456789012345678', '2023-05-15 11:25:00', 17970, 3),
('000000004', '34567890123456789012345678901234567890123456', '2023-05-20 18:35:00', 19970, 5);