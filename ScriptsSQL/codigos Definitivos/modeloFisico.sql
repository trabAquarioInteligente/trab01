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