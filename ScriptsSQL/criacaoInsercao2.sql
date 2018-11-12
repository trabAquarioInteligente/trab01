﻿CREATE TABLE Automovel (
    placa varchar(30),
    isRefrigerado boolean,
    carga_maxima float,
    modelo varchar(30),
    ID serial PRIMARY KEY,
    fk_Funcionario_IDfuncinario serial,
    fk_Cidade_ID serial
);

CREATE TABLE Cliente (
    nomeFicticio varchar(30),
    ID serial PRIMARY KEY,
    cnpj varchar(14)
);

CREATE TABLE BandaPorco (
    dataAbate date,
    quantidade int,
    ID serial PRIMARY KEY
);

CREATE TABLE Funcionario (
    nome varchar(30),
    cpf varchar(30),
    cargaHoraria time,
    IDfuncinario serial PRIMARY KEY,
    senha varchar(12)
);

CREATE TABLE Endereco (
    nome varchar(30),
    ID serial PRIMARY KEY,
    numero int,
    complemento varchar(100),
    fk_Cliente_ID serial,
    fk_Logradouro_ID serial
);

CREATE TABLE HorarioRecebimento (
    horarioInicio time,
    horarioFim time,
    ID serial PRIMARY KEY
);

CREATE TABLE Logradouro (
    ID serial PRIMARY KEY,
    descricao varchar(100)
);

CREATE TABLE Bairro (
    nome varchar(30),
    ID serial PRIMARY KEY,
    fk_Cidade_ID serial
);

CREATE TABLE Cidade (
    nome varchar(30),
    ID serial PRIMARY KEY
);

CREATE TABLE Contato (
    telefone int
);

CREATE TABLE _Pedido (
    dataEntrega date,
    numeroBandas int,
    ID serial PRIMARY KEY,
    fk_Cliente_ID serial,
    fk_Funcionario_IDfuncinario serial
);

CREATE TABLE Da_baixa (
    fk_BandaPorco_ID serial,
    fk__Pedido_ID serial
);

CREATE TABLE Entrega (
    fk_Automovel_ID serial,
    fk_Cliente_ID serial
);

CREATE TABLE Recebe (
    fk_HorarioRecebimento_ID serial,
    fk_Cliente_ID serial
);

CREATE TABLE Compoe (
    fk_Endereco_ID serial,
    fk_Bairro_ID serial
);

CREATE TABLE Pertence (
    fk_Funcionario_IDfuncinario serial
);

CREATE TABLE Adiciona (
    fk_Funcionario_IDfuncinario serial,
    fk_BandaPorco_ID serial
);
 
ALTER TABLE Automovel ADD CONSTRAINT FK_Automovel_2
    FOREIGN KEY (fk_Funcionario_IDfuncinario)
    REFERENCES Funcionario (IDfuncinario)
    ON DELETE CASCADE;
 
ALTER TABLE Automovel ADD CONSTRAINT FK_Automovel_3
    FOREIGN KEY (fk_Cidade_ID)
    REFERENCES Cidade (ID)
    ON DELETE RESTRICT;
 
ALTER TABLE Endereco ADD CONSTRAINT FK_Endereco_2
    FOREIGN KEY (fk_Cliente_ID)
    REFERENCES Cliente (ID)
    ON DELETE RESTRICT;
 
ALTER TABLE Endereco ADD CONSTRAINT FK_Endereco_3
    FOREIGN KEY (fk_Logradouro_ID)
    REFERENCES Logradouro (ID)
    ON DELETE CASCADE;
 
ALTER TABLE Bairro ADD CONSTRAINT FK_Bairro_2
    FOREIGN KEY (fk_Cidade_ID)
    REFERENCES Cidade (ID)
    ON DELETE RESTRICT;
 
ALTER TABLE _Pedido ADD CONSTRAINT FK__Pedido_2
    FOREIGN KEY (fk_Cliente_ID)
    REFERENCES Cliente (ID);
 
ALTER TABLE _Pedido ADD CONSTRAINT FK__Pedido_3
    FOREIGN KEY (fk_Funcionario_IDfuncinario)
    REFERENCES Funcionario (IDfuncinario);
 
ALTER TABLE Da_baixa ADD CONSTRAINT FK_Da_baixa_1
    FOREIGN KEY (fk_BandaPorco_ID)
    REFERENCES BandaPorco (ID)
    ON DELETE RESTRICT;
 
ALTER TABLE Da_baixa ADD CONSTRAINT FK_Da_baixa_2
    FOREIGN KEY (fk__Pedido_ID)
    REFERENCES _Pedido (ID)
    ON DELETE SET NULL;
 
ALTER TABLE Entrega ADD CONSTRAINT FK_Entrega_1
    FOREIGN KEY (fk_Automovel_ID)
    REFERENCES Automovel (ID)
    ON DELETE SET NULL;
 
ALTER TABLE Entrega ADD CONSTRAINT FK_Entrega_2
    FOREIGN KEY (fk_Cliente_ID)
    REFERENCES Cliente (ID)
    ON DELETE SET NULL;
 
ALTER TABLE Recebe ADD CONSTRAINT FK_Recebe_1
    FOREIGN KEY (fk_HorarioRecebimento_ID)
    REFERENCES HorarioRecebimento (ID)
    ON DELETE RESTRICT;
 
ALTER TABLE Recebe ADD CONSTRAINT FK_Recebe_2
    FOREIGN KEY (fk_Cliente_ID)
    REFERENCES Cliente (ID)
    ON DELETE RESTRICT;
 
ALTER TABLE Compoe ADD CONSTRAINT FK_Compoe_1
    FOREIGN KEY (fk_Endereco_ID)
    REFERENCES Endereco (ID)
    ON DELETE RESTRICT;
 
ALTER TABLE Compoe ADD CONSTRAINT FK_Compoe_2
    FOREIGN KEY (fk_Bairro_ID)
    REFERENCES Bairro (ID)
    ON DELETE RESTRICT;
 
ALTER TABLE Pertence ADD CONSTRAINT FK_Pertence_1
    FOREIGN KEY (fk_Funcionario_IDfuncinario)
    REFERENCES Funcionario (IDfuncinario)
    ON DELETE RESTRICT;
 
ALTER TABLE Adiciona ADD CONSTRAINT FK_Adiciona_1
    FOREIGN KEY (fk_Funcionario_IDfuncinario)
    REFERENCES Funcionario (IDfuncinario)
    ON DELETE SET NULL;
 
ALTER TABLE Adiciona ADD CONSTRAINT FK_Adiciona_2
    FOREIGN KEY (fk_BandaPorco_ID)
    REFERENCES BandaPorco (ID)
    ON DELETE SET NULL;

﻿INSERT INTO Funcionario(nome,cpf,cargaHoraria,senha)
VALUES('Rafael','111','08:00:00','0000001'),
('Jose','222','8:00:00','0000002'),
('Mario','333','8:00:00','0000003'),
('Manel','444','8:00:00','0000004'),
('Thiago','555','8:00:00','0000005');

INSERT INTO BandaPorco (dataAbate, quantidade)
VALUES ('2018/11/09', 50),
('2018/09/04', 75),
('2018/07/24', 90),
('2018/07/19', 50),
('2018/10/12', 30);

INSERT INTO contato (telefone)
VALUES ('998412345'),
('991230094'),
('998124059'),
('991982312'),
('990451235');

INSERT INTO Cliente (nomeFicticio, cnpj)
VALUES ('Ronaldo Pereira', '11111111111'),
('Edmundo Souza', '22222222222'),
('Mauricio Neto', '33333333333'),
('Nelson Cristo', '44444444444'),
('Luis Pinto', '55555555555');

INSERT INTO _Pedido (dataEntrega, numeroBandas)
VALUES ('2018/11/29', 30),
('2018/11/28', 40),
('2018/11/24', 35),
('2018/11/30', 70),
('2018/11/25', 15);

INSERT INTO Cidade(nome)
VALUES ('Vitoria'),
('Serra'),
('Vila Velha'),
('Cariacica'),
('Viana');

INSERT INTO Automovel (placa, isRefrigerado, carga_maxima, modelo)
VALUES ('MPQ 5543', TRUE, 350, 'Friorino'),
('PPK 6666', TRUE, 450, 'Caminhão'),
('ABC 1234', FALSE, 700, 'Caminhão'),
('PQC 5555', TRUE, 600, 'Caminhão'),
('NGO 4444', FALSE, 200, 'Friorino');

INSERT INTO HorarioRecebimento (horarioInicio, horarioFim)
VALUES ('8:00:00', '16:00:00'),
('7:00:00', '19:00:00'),
('7:00:00', '18:00:00'),
('7:00:00', '16:00:00'),
('14:00:00', '21:00:00');

INSERT INTO Bairro (nome)
VALUES ('Serra Dourada'),
('São Pedro'),
('Goiabeiras'),
('Manguinhos'),
('Bela Vista');

INSERT INTO Logradouro (descricao)
VALUES ('Rua'),
('Avenida'),
('Beco'),
('Escadaria'),
('Viela');

INSERT INTO Endereco(nome,numero,complemento)
VALUES('Maruipe',774,'perto do horto'),
('Paulina Maria de Souza',71,'perto da bomba da cesan'),
('Mario Lopes',25,'ao lado do shopping'),
('Vitoria',33,'perto da sedu'),
('Fernando Ferrari',54,'em frente à UFES');





