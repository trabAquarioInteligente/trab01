DROP TABLE IF EXISTS Funcionario cascade;
DROP TABLE IF EXISTS BandaPorco cascade;
DROP TABLE IF EXISTS contato cascade; 
DROP TABLE IF EXISTS Cliente cascade;
DROP TABLE IF EXISTS _Pedido cascade;
DROP TABLE IF EXISTS Cidade cascade;
DROP TABLE IF EXISTS Automovel cascade;
DROP TABLE IF EXISTS HorarioRecebimento cascade;
DROP TABLE IF EXISTS Bairro cascade;
DROP TABLE IF EXISTS Logradouro cascade;
DROP TABLE IF EXISTS Endereco cascade;
DROP TABLE IF EXISTS da_baixa cascade;
DROP TABLE IF EXISTS entrega cascade;
DROP TABLE IF EXISTS compoe cascade;
DROP TABLE IF EXISTS recebe cascade;
DROP TABLE IF EXISTS pertence cascade;
DROP TABLE IF EXISTS adiciona cascade;

CREATE TABLE Automovel (
    placa varchar(8),
    isRefrigerado boolean,
    carga_maxima float,
    modelo varchar(30),
    ID serial PRIMARY KEY,
    fk_Funcionario_IDfuncionario serial,
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
    nome varchar(50),
    cpf varchar(11),
    cargaHoraria time,
    IDfuncionario serial PRIMARY KEY,
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
    horarioInicio time not null,
    horarioFim time not null,
    ID serial PRIMARY KEY
);

CREATE TABLE Logradouro (
    ID serial PRIMARY KEY,
    descricao varchar(100) not null
);

CREATE TABLE Bairro (
    nome varchar(30),
    ID serial PRIMARY KEY,
    fk_Cidade_ID serial not null
);

CREATE TABLE Cidade (
    nome varchar(30),
    ID serial PRIMARY KEY
);

CREATE TABLE Contato (
    telefone int,
	fk_Funcionario_IDfuncionario serial not null
);

CREATE TABLE _Pedido (
    dataEntrega date,
    numeroBandas int,
    ID serial PRIMARY KEY,
    fk_Cliente_ID serial,
    fk_Funcionario_IDfuncionario serial
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
    fk_HorarioRecebimento_ID serial not null,
    fk_Cliente_ID serial not null
);

CREATE TABLE Compoe (
    fk_Endereco_ID serial,
    fk_Bairro_ID serial
);

CREATE TABLE Adiciona (
    fk_Funcionario_IDfuncionario serial,
    fk_BandaPorco_ID serial
);
 
ALTER TABLE Automovel ADD CONSTRAINT FK_Automovel_2
    FOREIGN KEY (fk_Funcionario_IDfuncionario)
    REFERENCES Funcionario (IDfuncionario)
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
    FOREIGN KEY (fk_Funcionario_IDfuncionario)
    REFERENCES Funcionario (IDfuncionario);
 
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
 
ALTER TABLE contato ADD CONSTRAINT FK_Contato_1
    FOREIGN KEY (fk_Funcionario_IDfuncionario)
    REFERENCES Funcionario (IDfuncionario)
    ON DELETE RESTRICT;
 
ALTER TABLE Adiciona ADD CONSTRAINT FK_Adiciona_1
    FOREIGN KEY (fk_Funcionario_IDfuncionario)
    REFERENCES Funcionario (IDfuncionario)
    ON DELETE SET NULL;
 
ALTER TABLE Adiciona ADD CONSTRAINT FK_Adiciona_2
    FOREIGN KEY (fk_BandaPorco_ID)
    REFERENCES BandaPorco (ID)
    ON DELETE SET NULL;

INSERT INTO Funcionario(nome,cpf,cargaHoraria,senha)
VALUES('Rafael','111','08:00:00','0000001'),
('Jose','222','8:00:00','0000002'),
('Mario','333','8:00:00','0000003'),
('Manel','444','8:00:00','0000004'),
('Thiago','555','8:00:00','0000005'),
('Lusca', '12415612312','8:00:00','0000006'),
('Gabriel','12345678912', '6:00:00','0000007'),
('Renata', '45678912345','6:00:00','0000008');

INSERT INTO BandaPorco (dataAbate, quantidade)
VALUES('2018/07/19', 0),
('2018/07/24', 0),
('2018/08/14', 0),
('2018/09/04', 55),
('2018/10/12', 60),
('2018/11/09', 50),
('2018/11/13', 75);

INSERT INTO Adiciona (fk_Funcionario_IDfuncionario, fk_BandaPorco_ID)
VALUES (6, 1),
(6, 2),
(6, 3),
(7, 4),
(7, 5),
(6, 6),
(7, 7);

INSERT INTO contato (telefone, fk_Funcionario_IDfuncionario)
VALUES ('998412345', 7),
('991230094', 7),
('998124059', 8),
('991982312', 7),
('990451235', 6);

INSERT INTO Cliente (nomeFicticio, cnpj)
VALUES ('Ronaldo Pereira', '11111111111'),
('Edmundo Souza', '22222222222'),
('Mauricio Neto', '33333333333'),
('Nelson Cristo', '44444444444'),
('Luis Pinto', '55555555555');

INSERT INTO _Pedido (dataEntrega, numeroBandas, fk_Cliente_ID, fk_Funcionario_IDfuncionario)
VALUES ('2018/11/29', 30, 1, 8),
('2018/11/28', 40, 2, 8),
('2018/11/24', 35, 3, 7),
('2018/11/30', 70, 4, 7),
('2018/11/25', 15, 5, 7);

INSERT INTO Da_baixa(fk_BandaPorco_ID, fk__Pedido_ID)
VALUES (1, 1),
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(4, 3),
(4, 4),
(5, 4);

INSERT INTO Cidade(nome)
VALUES ('Vitoria'),
('Serra'),
('Vila Velha'),
('Cariacica'),
('Viana');

INSERT INTO Automovel (placa, isRefrigerado, carga_maxima, modelo, fk_Cidade_ID, fk_Funcionario_IDfuncionario)
VALUES ('MPQ 5543', TRUE, 350, 'Friorino', 1, 1),
('PPK 6666', TRUE, 450, 'Caminhão', 2, 2),
('ABC 1234', FALSE, 700, 'Caminhão', 3, 3),
('PQC 5555', TRUE, 600, 'Caminhão', 4, 4),
('NGO 4444', FALSE, 200, 'Friorino', 5, 5);

INSERT INTO Entrega ( fk_Automovel_ID, fk_Cliente_ID)
VALUES (1,1),
(2, 1),
(3, 1),
(4, 2),
(5, 1);

INSERT INTO HorarioRecebimento (horarioInicio, horarioFim)
VALUES ('8:00:00', '12:00:00'),
('7:00:00', '13:00:00'),
('7:00:00', '12:00:00'),
('7:00:00', '11:00:00'),
('14:00:00', '18:00:00');

INSERT INTO recebe (fk_HorarioRecebimento_ID ,fk_Cliente_ID)
VALUES (1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(1, 5),
(4, 5);

INSERT INTO Bairro (nome, fk_Cidade_ID)
VALUES ('Serra Dourada', 2),
('São Pedro', 1),
('Goiabeiras', 1),
('Manguinhos', 2),
('tabuazeiro', 1);

INSERT INTO Logradouro (descricao)
VALUES ('Rua'),
('Avenida'),
('Beco'),
('Escadaria'),
('Viela');

INSERT INTO Endereco(nome,numero,complemento, fk_Cliente_ID, fk_Logradouro_ID)
VALUES('Maruipe',774,'perto do horto', 1, 2),
('Paulina Maria de Souza',71,'perto da bomba da cesan', 2, 4),
('Mario Lopes',25,'ao lado do shopping', 3, 1),
('Vitoria',33,'perto da sedu', 4, 1),
('Fernando Ferrari',54,'em frente à UFES', 5, 2);

INSERT INTO Compoe(fk_Endereco_ID, fk_Bairro_ID)
VALUES(1, 4),
(2, 5),
(3, 2),
(4, 1),
(5, 3);