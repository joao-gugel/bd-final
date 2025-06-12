CREATE TABLE vendedor (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(64) NOT NULL,
    cpf VARCHAR(11) NOT NULL,
    data_admissao TIMESTAMP NOT NULL
);

CREATE TABLE compra (
    id SERIAL PRIMARY KEY,
    status VARCHAR(32) NOT NULL,
    data TIMESTAMP NOT NULL,
    id_vendedor INT,
    id_cliente INT,
    id_pagamento INT
);

CREATE TABLE pagamento (
    id SERIAL PRIMARY KEY,
    metodo VARCHAR(32) NOT NULL
);

CREATE TABLE cliente (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(64) NOT NULL,
    cpf VARCHAR(11) NOT NULL,
    telefone VARCHAR(11) NULL,
    email VARCHAR(256) NOT NULL,
    endereco VARCHAR(256) NOT NULL 
);

CREATE TABLE item_compra (
    id SERIAL PRIMARY KEY,
    quantidade INT,
    preco_unitario INT,
    id_compra INT,
    id_produto INT
);

CREATE TABLE nota_fiscal (
    id SERIAL PRIMARY KEY,
    numero VARCHAR(9) NOT NULL,
    chave_acesso VARCHAR(44) NOT NULL,
    data_emissao TIMESTAMP NOT NULL,
    valor_total INT NOT NULL,
    id_compra INT
);

CREATE TABLE produto (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(64) NOT NULL,
    preco INT NOT NULL,
    cor VARCHAR(32) NOT NULL,
    tamanho VARCHAR(5) NOT NULL,
    quantidade_estoque INT NOT NULL,
    categoria VARCHAR(32) NOT NULL,
    id_estoque INT
);

CREATE TABLE estoque (
    id SERIAL PRIMARY KEY,
    localizacao VARCHAR(256) NOT NULL
);

ALTER TABLE produto ADD FOREIGN KEY (id_estoque) REFERENCES estoque(id);
ALTER TABLE compra ADD FOREIGN KEY (id_vendedor) REFERENCES vendedor(id);
ALTER TABLE compra ADD FOREIGN KEY (id_cliente) REFERENCES cliente(id);
ALTER TABLE compra ADD FOREIGN KEY (id_pagamento) REFERENCES pagamento(id);
ALTER TABLE item_compra ADD FOREIGN KEY (id_compra) REFERENCES compra(id);
ALTER TABLE item_compra ADD FOREIGN KEY (id_produto) REFERENCES produto(id);
ALTER TABLE nota_fiscal ADD FOREIGN KEY (id_compra) REFERENCES compra(id);
