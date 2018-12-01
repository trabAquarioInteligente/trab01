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
	ID serial,
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
('Renata', '45678912345','6:00:00','0000008'),
('Andreas','777','4:00:00','0000009'),
('Daniel','666','8:00:00','00000010')
;

INSERT INTO BandaPorco (dataAbate, quantidade)
VALUES('2018/07/19', 0),
('2018/07/24', 0),
('2018/08/14', 0),
('2018/09/04', 0),
('2018/10/12', 0),
('2018/11/09', 0),
('2018/11/13', 75),
('2018/11/22',200),
('2018/12/05',100),
('2018/12/12',80);

INSERT INTO Adiciona (fk_Funcionario_IDfuncionario, fk_BandaPorco_ID)
VALUES (6, 1),
(6, 2),
(6, 3),
(7, 4),
(7, 5),
(6, 6),
(7, 7),
(7,8),
(6,9),
(6,10);

INSERT INTO contato (telefone, fk_Funcionario_IDfuncionario)
VALUES ('998412345', 7),
('991230094', 7),
('998124059', 8),
('991982312', 7),
('990451235', 6),
('98867776', 9),
('95544776',10),
('97554123',9),
('97485621',10),
('98784154',9);

INSERT INTO Cliente (nomeFicticio, cnpj)
VALUES ('Ronaldo Pereira', '11111111111'),
('Edmundo Souza', '22222222222'),
('Mauricio Neto', '33333333333'),
('Nelson Cristo', '44444444444'),
('Luis Pinto', '55555555555'),
('Mineirao','99999999999'),
('Muffato','00000000001');

INSERT INTO _Pedido (dataEntrega, numeroBandas, fk_Cliente_ID, fk_Funcionario_IDfuncionario)
VALUES ('2018/11/29', 30, 1, 8),
('2018/11/28', 40, 2, 8),
('2018/11/24', 35, 3, 7),
('2018/11/30', 70, 4, 7),
('2018/11/25', 15, 5, 7),
('2018/11/26',50,6,9),
('2018/11/27',30,7,10),
('2018/11/27',25,7,9),
('2018/11/28',41,7,8),
('2018/11/29',34,2,8);

INSERT INTO Da_baixa(fk_BandaPorco_ID, fk__Pedido_ID)
VALUES (1, 1),
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(4, 3),
(4, 4),
(5, 4),
(5,5),
(5,6),
(6,6);

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
(5, 1),
(1,3),
(1,4),
(2,5),
(2,6),
(3,7);

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
(4, 5),
(4,7),
(4,6),
(2,6);

INSERT INTO Bairro (nome, fk_Cidade_ID)
VALUES ('Serra Dourada', 2),
('São Pedro', 1),
('Goiabeiras', 1),
('Manguinhos', 2),
('tabuazeiro', 1),
('Jardim Limoeiro',3),
('Central Carapina',4),
('Jardim Camburi',5),
('Maruipe',1);

INSERT INTO Logradouro (descricao)
VALUES ('Rua'),
('Avenida'),
('Beco'),
('Escadaria'),
('Viela'),
('Acesso'),
('Corrego'),
('Passarela'),
('Retorno'),
('Rodovia'),
('Via'),
('Viaduto'),
('Via Expressa'),
('Trecho'),
('Trevo');

INSERT INTO Endereco(nome,numero,complemento, fk_Cliente_ID, fk_Logradouro_ID)
VALUES('Maruipe',774,'perto do horto', 1, 2),
('Paulina Maria de Souza',71,'perto da bomba da cesan', 2, 4),
('Mario Lopes',25,'ao lado do shopping', 3, 1),
('Vitoria',33,'perto da sedu', 4, 1),
('Fernando Ferrari',54,'em frente à UFES', 5, 2),
('do Gordo',99, 'proximo a padaria do joão', 6, 1),
('Mamão', 78, 'Proximo a distribuidora de queijo', 7, 1);

INSERT INTO Compoe(fk_Endereco_ID, fk_Bairro_ID)
VALUES(1, 4),
(2, 5),
(3, 2),
(4, 1),
(5, 3),
(6, 6),
(7, 7);

update cliente set nomeficticio = 'Perim' where nomeficticio = 'Ronaldo Pereira';

update cliente set nomeficticio = 'Atacadão' where nomeficticio = 'Maurício Neto';

update cliente set nomeficticio = 'Extra Bom' where nomeficticio = 'Nelson Cristo';

update cliente set nomeficticio = 'Extra Bom' where nomeficticio = 'Luis Pinto';

update cliente set nomeficticio = 'Eldorado' where nomeficticio = 'Edmundo Souza';

update cliente set nomeficticio = 'Carone' where nomeficticio = 'Mauricio Neto';

insert into cliente(nomeficticio,cnpj) values('Ok','66666666666'),('Oba','77777777777'),('Epa','88888888888');

insert into endereco(nome,numero,complemento,fk_cliente_id,fk_logradouro_id) values('Maximilio da Penha',406,null,8,1),('Rozendo Serapião',213,'Edificio Marlim apt.302',6,2),('Libano',666,null,7,2);

insert into bairro(nome) values('Jabaeté'),('Soteco'),('Itaparica');

insert into compoe(fk_endereco_id,fk_bairro_id) values(8,11),(9,12),(10,10);

INSERT INTO HorarioRecebimento (horarioInicio, horarioFim) VALUES ('8:00:00', '10:00:00'), ('7:00:00', '9:00:00'), ('13:00:00', '15:00:00');

INSERT INTO recebe (fk_HorarioRecebimento_ID ,fk_Cliente_ID) VALUES (6, 8), (7, 9), (8, 10);
