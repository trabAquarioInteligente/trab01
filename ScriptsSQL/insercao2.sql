INSERT INTO Funcionario(nome,cpf,cargaHoraria,senha)
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






