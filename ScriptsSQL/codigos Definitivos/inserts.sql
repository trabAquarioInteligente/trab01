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
('Fernando Ferrari',54,'em frente à UFES', 5, 2);

INSERT INTO Compoe(fk_Endereco_ID, fk_Bairro_ID)
VALUES(1, 4),
(2, 5),
(3, 2),
(4, 1),
(5, 3);
