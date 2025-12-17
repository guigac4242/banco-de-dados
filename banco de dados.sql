CREATE TABLE produto (
    id_produto VARCHAR(10) PRIMARY KEY,
    nome_produto VARCHAR(50)
);

CREATE TABLE cliente (
    id_cliente VARCHAR(10) PRIMARY KEY,
    nome_cliente VARCHAR(50)
);

CREATE TABLE venda (
    id_cliente VARCHAR(10),
    id_produto VARCHAR(10),
    data_venda DATE,
    valor DECIMAL(10,2),
    PRIMARY KEY (id_cliente, id_produto, data_venda),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
   
