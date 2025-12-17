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
    FOREIGN KEY (id_produto) REFERENCES produto(id_produto)
);

INSERT INTO produto VALUES ('P01','Carro');
INSERT INTO produto VALUES ('P02','Moto');
INSERT INTO produto VALUES ('P03','Bicicleta');

INSERT INTO cliente VALUES ('C01','João Pedro');
INSERT INTO cliente VALUES ('C02','Maria José');
INSERT INTO cliente VALUES ('C03','Carla');

INSERT INTO venda VALUES ('C01','P02','2023-10-10',5000.00);
INSERT INTO venda VALUES ('C01','P02','2023-10-15',3000.00);
INSERT INTO venda VALUES ('C01','P01','2023-10-10',6000.00);
INSERT INTO venda VALUES ('C03','P01','2023-09-21',4500.00);
INSERT INTO venda VALUES ('C03','P02','2023-10-10',2300.00);

SELECT
    c.nome_cliente,
    p.nome_produto,
    v.data_venda,
    v.valor
FROM venda v
JOIN cliente c ON v.id_cliente = c.id_cliente
JOIN produto p ON v.id_produto = p.id_produto;
