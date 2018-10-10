create table Cidades(
	codigo int,
	cidade varchar(30) not null,
	PRIMARY KEY (codigo)
);

create table Endereco(
	codigo int,
	numero int not null,
	rua varchar(30) not null,
	bairro varchar(30) not null,
	codCidade int not null,
	cep varchar(8),
	PRIMARY KEY (codigo),
	foreign key(codCidade) references Cidades(codigo)
);

create table Funcionario(
	codigo int,
	nome varchar(80) not null,
	codEnd int not null,
	funcao varchar(30),
	PRIMARY KEY (codigo),
	foreign key(codEnd) references Endereco(codigo)
);

create table Veiculo(
	codigo int,
	refrigerado boolean not null,
	pesoMaximo float,
	modelo varchar(50) not null,
	placa varchar(50) not null,
	codMot int,
	PRIMARY KEY (codigo)
);

create table Motorista(
	codigo int,
	codFun int NOT NULL,
	codVeiculo int NOT NULL,
	codCidadeEntrega int NOT NUll,
	PRIMARY KEY (codigo),
	foreign key(codFun) references Funcionario(codigo),
	foreign key(codVeiculo) references Veiculo(codigo),
	foreign key(codCidadeEntrega) references Endereco(codigo)
);

/*O campo Quantidade é gerado altomaticamente somando o campo quantidade da tabela produto*/
create table Estoque(
	quantidadeT int 
	
);

create table Produto(
	codigo int,
	dataabate date,
	quantidade int,
	PRIMARY KEY (codigo)
);

create table Empresa(
	codigo int,
	nome varchar(80),
	codEnd int,
	PRIMARY KEY (codigo),
	foreign key(codEnd) references Endereco(codigo)
);

create table HorarioEntrega(
	codigo int,
	codEmp int,
	horarioI time,
	horarioF time,
	PRIMARY KEY (codigo),
	foreign key(codEmp) references Empresa(codigo)
);

create table AcessoSistema(
	codigo int, /*login*/
	codFun int, 
	senha varchar(12),
	alterarEstoque boolean,
	agendarEntrega boolean,
	utilizarSistemadeentrega boolean,
	cancelarEntrega boolean,
	PRIMARY KEY (codigo),
	foreign key(codFun) references Funcionario(codigo)
);

create table pedido(
	codigo int,
	dataAgen date,
	dataEnt date,
	quantidade int,
	codEmp int,
	codMot int,
	codEnd int,
	precoV float,
	PRIMARY KEY (codigo),
	foreign key(codEmp) references Empresa(codigo),
	foreign key(codMot) references Motorista(codigo),
	foreign key(codEnd) references Endereco(codigo)
);

insert INTO Cidades (codigo, cidade)
VALUES
(1, 'Vila Velha'),
(2, 'Vitoria'),
(3, 'Serra'),
(4, 'Cariacica'),
(5, 'Viana'),
(6, 'Guarapari');

insert INTO Endereco (codigo, numero, rua, bairro, codCidade, cep)
VALUES
(1, 111, 'Das Flores', 'Manguinhos', 3, '29127746'),
(2, 222, 'Bahia', 'Riviera da Barra', 1, '29146557'),
(3, 333, 'Libano', 'Jabaete', 1, '29174556'),
(4, 444, 'Riviera da barba', 'Goiabeiras', 2, '29000000'),
(5, 555, 'Açai','Morro do Morreno', 4, '22222222'),
(6, 777, 'Goiaba', 'Aguas doces' ,5, '27986541');

insert INTO Funcionario (codigo, nome, codEnd, funcao)
VALUES
(1, 'Andreas José Alves Hermes',3, 'DBA'),
(2, 'Nicolas Sampaio', 1, 'Analista'),
(3, 'Rafael Afonso dos Anjos', 4, 'Programador'),
(4, 'Daniel Henrique comerio', 5, 'Programador');

insert INTO Veiculo (codigo, refrigerado, pesoMaximo, modelo, placa, codMot)
VALUES
(1, True, 300.0, 'Corsa', 'PPD 9987',1),
(2, False, 150.0, 'Lux', 'KKG 5574',2);

insert INTO Motorista (codigo, codFun, codVeiculo, codCidadeEntrega)
VALUES
(1, 3, 1, 2),
(2, 4, 2, 6);

insert INTO Produto (codigo, dataabate, quantidade)
VALUES
(1, '2018-10-01', 200),
(2, '2018-09-30', 100);

insert INTO Empresa (codigo, nome, codEnd)
VALUES
(1, 'Carrefour', 2),
(2, 'OK', 6);

insert INTO HorarioEntrega (codigo, codEmp, horarioI, horarioF)
VALUES
(1, 1, '12:00', '14:00'),
(2, 1, '18:00', '20:00'),
(3, 2, '7:00', '8:00'),
(4, 2, '20:00', '21:00');

insert INTO AcessoSistema (codigo, codFun, senha, alterarEstoque, agendarEntrega, utilizarSistemadeEntrega, cancelarEntrega)
VALUES
(1, 1, 'ArgV', True, True, True, True),
(2, 2, 'Pokebolas', False, False, False, True),
(3, 3, 'ProtoUsuario', False, False, True, True),
(4, 4, 'DormiCedo', False, False, True, True);

insert INTO pedido (codigo, dataAgen, dataEnt, quantidade, codEmp, codMot, codEnd, precoV)
VALUES
(1, '2018-10-01', '2018-10-05', 50, 1, 1, 2, 4000.00),
(2, '2018-09-30', '2018-10-06', 25, 2, 2, 6, 2000.00),
(3, '2018-09-28', '2018-10-04', 75, 1, 1, 2, 3000.00),
(4, '2018-09-29', '2018-10-03', 10, 2, 2, 6, 400.00);