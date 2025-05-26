CREATE TABLE prod ( cdProd VARCHAR(10) PRIMARY KEY, np VARCHAR(10) ) ;

 

CREATE TABLE cli ( cdcli VARCHAR(10) PRIMARY KEY, nome VARCHAR(10) ) ;

 

CREATE TABLE Venda ( cdcli VARCHAR(10), cdProd VARCHAR(10), dt VARCHAR(10), 
                     valor FLOAT, PRIMARY KEY(cdcli,cdProd,dt), 
FOREIGN KEY(cdcli) REFERENCES cli (cdcli), 
FOREIGN KEY(cdProd) REFERENCES prod (cdProd) );

INSERT INTO PROD values ('P01','CARRO');
INSERT INTO PROD values ('P02','MOTO');
INSERT INTO PROD values ('P03','BICICLETA');

INSERT INTO CLI values ('C01','JOAO PEDRO');
INSERT INTO CLI values ('C02','MARIA JOSE');
INSERT INTO CLI values ('C03','CARLA');


INSERT INTO VENDA values ('C01','P02','10/10/2023',5000);
INSERT INTO VENDA values ('C01','P02','15/10/2023',3000);
INSERT INTO VENDA values ('C01','P01','10/10/2023',6000);

INSERT INTO VENDA values ('C03','P01','21/09/2023',4500);
INSERT INTO VENDA values ('C03','P02','10/10/2023',2300);
;

SELECT
    c.nome AS nome_cliente,
    p.np AS nome_produto,
    v.dt AS data_compra,
    v.valor
FROM
    Venda v
JOIN
    Cli c ON v.cdcli = c.cdcli
JOIN
    Prod p ON v.cdprod = p.cdprod;
	}