CREATE DATABASE Farmacia;

USE Farmacia;


CREATE TABLE Produto (
    ID_Produto INT PRIMARY KEY,
    Descricao VARCHAR(100) NOT NULL,
    Marca VARCHAR(50),
    Preco_Custo DECIMAL(10,2),
    Preco_Venda DECIMAL(10,2),
    Lote_Fabricacao VARCHAR(50),
    Tipo_Produto VARCHAR(50)
);


CREATE TABLE Fornecedor (
    ID_Fornecedor INT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    CPF_CNPJ VARCHAR(20) UNIQUE,
    Empresa VARCHAR(100),
    Telefone VARCHAR(20)
);


CREATE TABLE Movimentacao_Estoque (
    ID_Movimentacao INT PRIMARY KEY,
    Tipo_Movimentacao VARCHAR(30),
    Historico_Movimentacao VARCHAR(100),
    Finalidade_Motivo VARCHAR(100),
    Origem_Destino VARCHAR(100),
    Data_Hora_Movimentacao DATETIME,
    Saldo_Posterior INT,
    Lote_Movimentado VARCHAR(50),
    ID_Compra_FK INT,
    ID_Produto_FK INT,
    ID_Pessoa_FK INT,
    ID_Estoque_FK INT,

    FOREIGN KEY(ID_Produto_FK)
    REFERENCES Produto(ID_Produto)
);


CREATE TABLE Fornece (
    ID_Fornecedor_FK INT,
    ID_Produto_FK INT,

    PRIMARY KEY(ID_Fornecedor_FK, ID_Produto_FK),

    FOREIGN KEY(ID_Fornecedor_FK)
    REFERENCES Fornecedor(ID_Fornecedor),

    FOREIGN KEY(ID_Produto_FK)
    REFERENCES Produto(ID_Produto)
);
