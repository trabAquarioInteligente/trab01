# TRABALHO 01:  Transporte de perecíveis
Trabalho desenvolvido durante a disciplina de BD1

# Sumário

### DIÁRIO DE BORDO<br>
[Diário de Bordo](https://docs.google.com/document/d/1J8j7VNJyWz_0cKxVUvNO_YxGLkDz3z7vywEsU2Lk_ZY)<br>

### 1. COMPONENTES<br>
Andreas Hermes<br>
Daniel Comério<br>
Nicolas Sampaio<br>
Rafael dos Anjos<br>
### 1.1 CLIENTES<br>
André Altivo<br>
Gabriela Piffer<br>
Lucca Pedrini<br>
Marcelo Mendes<br>

primeiro_componente_do_grupo:andreashermes7@gmail.com<br>
segundo_componente_do_grupo:danielhcomerio@gmail.com<br>
terceiro_componente_do_grupo:nicolas.pereira.sampaio16@gmail.com<br>
quarto_componente_do_grupo:raffael.annjos@gmail.com<br>

### 2.INTRODUÇÃO E MOTIVAÇAO<br>
O frigorífico fricarnes é uma empresa que realiza entregas de carne suína dentro da região de grande vitória que devem ser realizadas dentro de um determinado tempo, as carnes devem estar em uma certa temperatura, caso essa temperatura esteja errada as carnes congelam o que resulta em uma perda da qualidade ou elas estragam resultando na perda da mercadoria.

### 3.MINI-MUNDO Novo<br>

O sistema a ser desenvolvido tem como objetivo solucionar os problemas do cliente que são: o estoque e as entregas.
Na parte do estoque, o sistema deve controlar os produtos que entrarem no estoque do dia tendo em vista que são armazenados apenas produtos frescos e o modelo de saída desses produtos deve ser FIFO(First-In First-Out), registrar os pedidos dos clientes(supermercados), relacionar o pedido com um veículo, caso um pedido não caiba em um caminhão poderão ser usados até 2 caminhões.
Na parte do transporte o sistema deverá se integrar com o waze a fim de evitar engarrafamentos e melhorar o percurso para o motorista, cada caminhão tem um motorista que fica responsável por uma das cidades onde o frigorífico atende, o sistema deve gerenciar a frota do frigorífico de acordo que se ajuste os pedidos de forma paliativa caso algum veículo esteja precisando de reparos.

### 4.MOCKUP<br>

[Mockup](https://github.com/trabAquarioInteligente/trab01/blob/master/Mockup/TransportePereciveis.pdf)


#### 4.1 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?
    a) O sistema proposto poderá fornecer quais tipos de relatórios e informaçes? 
    b) Crie uma lista com os 5 principais relatórios que poderão ser obtidos por meio do sistema proposto!
    O sistema precisará informar a quantidade de bandas que serão alocadas para cada caminhão e dizer ao motorista as entregas do dia e a melho rota para as mesmas.
 
*Relatório de entregas em data.<br>
*Relatório de empresas por município.<br>
*Relatorio de vendas.<br>
*Relatorio de frota.<br>
*Relatorio de Compras.<br>

[Relatorios](https://github.com/trabAquarioInteligente/trab01/blob/master/Relatorios%20JupyterNotebook/TransportePereciveis.ipynb)<br>
  
#### 4.2 TABELA DE DADOS DO SISTEMA:

[Tabela de Dados](https://github.com/trabAquarioInteligente/trab01/blob/master/Planilha/TransportePerecivel.xlsx)<br>

>## Marco de Entrega 01 em: (30/08/2018)<br>

### 5.MODELO CONCEITUAL<br>
    A) NOTACAO ENTIDADE RELACIONAMENTO 
        * Para nosso prótótipo limitaremos o modelo conceitual nas 6 principais entidades do escopo
        * O protótipo deve possui no mínimo duas relações N para N
        * o mínimo de entidades do modelo conceitual será igual a 5
        
<img src="https://raw.githubusercontent.com/trabAquarioInteligente/trab01/master/images/modeloConceitualATT22.png" alt="Modelo Conceitual" ><br>

    
    B) NOTACAO UML (Caso esteja fazendo a disciplina de analise)
    C) QUALIDADE 
        Garantir que a semântica dos atributos seja clara no esquema
        Criar o esquema de forma a garantir a redução de informação redundante, possibilidade de valores null, 
        e tuplas falsas
        
<img src="https://raw.githubusercontent.com/trabAquarioInteligente/trab01/master/images/Class%20Diagram0.png" alt="Diagrama de Classe" ><br>
    
#### 5.1 Validação do Modelo Conceitual
    [Smart Car]: [Harrison Sanches]
    [Pulseira Saúde]: [Wallace de Paula]
#### 5.2 DECISÕES DE PROJETO
    [atributo]: [descrição da decisão]
    
    EXEMPLO:
    a) Campo endereço: em nosso projeto optamos por um campo multivalorado e composto, pois a empresa 
    pode possuir para cada departamento mais de uma localização... 
    b) justifique!

>## Marco de Entrega 02 em: (13/09/2018)<br>
#### 5.3 DESCRIÇÃO DOS DADOS 
    [objeto]: [descrição do objeto]
    
    Tabela “AUTOMOVEL”: Contém todas informações pertinentes ao automóvel.
    Placa: Placa de identificação do automóvel.
    Tipo: Diz respeito se há ou não refrigeração.
    Carga_Maxima: Quantidade máxima de carga capaz de ser transportada.
    Modelo: Refere-se ao modelo do automóvel.
    ID: Código utilizado como chave primária da tabela.
    Fk_Funcionario_IDfuncinario: Campo utilizado para relacionar esta tabela com “FUNCIONARIO”.
    Fk_Cidade_ID: Campo utilizado para relacionar esta tabela com “CIDADE”.
    
    Tabela “CLIENTE”: Responsável por armazenar informações de identificação do cliente.
    NomeFiciticio: Nome do cliente (empresa).
    ID: Código utilizado como chave primária da tabela.
    CNPJ: Corresponde ao número do cadastro nacional de pessoa jurídica do cliente em questão. 
    
    Tabela “BandaPorco”: Informações pertinentes ao nosso produto.
    DataAbate: Corresponde a data em que o porco responsável pela banda em questão foi abatido.
    Quantidade: Diz respeito à quantidade inteira de bandas oriundas do abate.
    ID: Código utilizado como chave primária da tabela.
    
    Tabela “FUNCIONARIO”: Contém todas informações pertinentes ao nosso funcionário.
    Nome: Nome do funcionário.
    CPF: Corresponde ao número do cadastro de pessoa física do funcionário em questão.
    CargaHoraria: Quantidade de horas que o funcionário trabalha em um dia.
    IDfuncinario: Código utilizado como chave primária da tabela.
    Senha: Utilizado para login do funcionário no sistema.
    
    Tabela “ENDERECO”: Necessário para armazenar o endereço de entrega dos pedidos efetuados por nossos clientes.
    Nome: Nome do local onde fica localizado a empresa cliente.
    ID: Código utilizado como chave primária da tabela.
    Numero: Corresponde ao número da propriedade.
    Complemento: Informações adicionais à cerca do endereço.
    Fk_Cliente_ID: Campo utilizado para relacionar esta tabela com “CLIENTE”.
    Fk_Logradouro_ID: Campo utilizado para relacionar esta tabela com “LOGRADOURO”.

    Tabela “HorarioRecebimento“: Pertinente para nos fornecer informação à cerca das faixas de horário possíveis para entrega do pedido.
    HorarioInicio: Horário que se dá início à disponibilidade do cliente para recebimento da carga.
    HorarioFim: Horário que se dá fim à disponibilidade do cliente para recebimento da carga.
    ID: Código utilizado como chave primária da tabela.

    Tabela “Logradouro“: Necessário para armazenar os diferentes tipos de logradouros. 
    ID: Código utilizado como chave primária da tabela. 
    Descrição: Qual o tipo de logradouro.

    Tabela “Bairro“: Utilizada para armazenar o nome dos possíveis bairros para entrega.
    Nome: Nome do bairro.
    ID: Código utilizado como chave primária da tabela.
    Fk_Cidade_ID: Campo utilizado para relacionar esta tabela com “CIDADE”.
    
    Tabela “CIDADE“: Armazena as cidades que são vinculadas a determinado automóvel.
    Nome: Nome da cidade.
    ID: Código utilizado como chave primária da tabela.

    Tabela “Contato“: Necessário para guardar número para contato com o cliente.
    Fk_Funcionario_IDfuncionario: Campo utilizado para relacionar esta tabela com “FUNCIONARIO”.
    Telefone: Número utilizado como um meio de contato.

    Tabela “_Pedido“: Armazena informações pertinentes a cada pedido.
    DataEntrega: Data a qual será feita a entrega do pedido.
    NumeroBandas: Quantidade de bandas requisitadas no pedido efetuado pelo cliente.
    ID: Código utilizado como chave primária da tabela.
    Fk_Cliente_ID: Campo utilizado para relacionar esta tabela com “CLIENTE”.
    Fk_Funcionario_IDfuncionario: Campo utilizado para relacionar esta tabela com “FUNCIONARIO”.

    Tabela “Da_baixa“: Necessário para fazer o controle da quantidade do nosso produto, dando baixa quando for efetuado algum pedido.
    Fk_BandaPorco_ID: Campo utilizado para relacionar esta tabela com “BandaPorco”.
    Fk__Pedido_ID: Campo utilizado para relacionar esta tabela com “_PEDIDO”.

    Tabela “Entrega“: Utilizada para saber o responsável pela entrega e para quem.
    Fk _Automovel_ID: Campo utilizado para relacionar esta tabela com “AUTOMOVEL”.
    Fk_Cliente_ID: Campo utilizado para relacionar esta tabela com “CLIENTE”.

    Tabela “Recebe“: Necessário para saber quando o cliente estará apto para receber a entrega.
    Fk_HorarioRecebimento_ID: Campo utilizado para relacionar esta tabela com “HorarioRecebimento”.
    Fk_Cliente_ID: Campo utilizado para relacionar esta tabela com “CLIENTE”.

    Tabela “Compoe“: Utilizada para facilitar a relação das tabelas "BAIRRO" e "ENDERECO".
    Fk_Endereco_ID: Campo utilizado para relacionar esta tabela com “ENDERECO”.
    Fk_Bairro_ID: Campo utilizado para relacionar esta tabela com “BAIRRO”.

    Tabela “Adiciona“: Pertinente para relacionar e proporcionar que o funcionário aumente a quantidade do produto no estoque.
    Fk_Funcionario_IDfuncionario: Campo utilizado para relacionar esta tabela com “FUNCIONARIO”.
    Fk_BandaPorco_ID: Campo utilizado para relacionar esta tabela com “BandaPorco”.


### 6	MODELO LÓGICO<br>
![Alt text](https://github.com/trabAquarioInteligente/trab01/blob/master/images/L%C3%B3gicoATT.png)
        
[Modelo Lógico](https://raw.githubusercontent.com/trabAquarioInteligente/trab01/master/images/L%C3%B3gicoATT.png)<br>

### 7	MODELO FÍSICO<br>
[Modelo Físico](https://github.com/trabAquarioInteligente/trab01/blob/master/ScriptsSQL/codigos%20Definitivos/modeloFisico.sql)<br>         
        
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
#### 8.1 DETALHAMENTO DAS INFORMAÇÕES
[Inclusão](https://github.com/trabAquarioInteligente/trab01/blob/master/ScriptsSQL/codigos%20Definitivos/inserts.sql)<br>

#### 8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELAS E INSERÇÃO DOS DADOS
[Sript para criação de tabelas e inserção dos dados](https://github.com/trabAquarioInteligente/trab01/blob/master/ScriptsSQL/codigos%20Definitivos/criacao_inserts.sql)<br>

#### 8.3 INCLUSÃO DO SCRIPT PARA EXCLUSÃO DE TABELAS EXISTENTES, CRIAÇÃO DE TABELA NOVAS E INSERÇÃO DOS DADOS
[Script para exclusão de tabelas existentes, criação de tabelas novas e inserção dos dados](https://github.com/trabAquarioInteligente/trab01/blob/master/ScriptsSQL/codigos%20Definitivos/criacao_insercao_delete.sql)<br>
>## Marco de Entrega 03 em: (27/09/18) <br>

### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
    OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
## Consulta Tabela Automovel<br>
Codigo: select * from automovel; <br>
<img src="https://raw.githubusercontent.com/trabAquarioInteligente/trab01/master/images/SelectSQL/SelectAutomovel.png" alt="" ><br>
<br>

## Consulta Tabela Bairro<br>
Codigo: select * from bairro; <br>
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/selects%20Final/Bairro.png" alt="Consulta Tabela Bairro" ><br>
<br>


## Consulta Tabela Banda de Porco<br>
Codigo: select * from bandaporco; <br>
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/selects%20Final/BandaPorco.png" alt="Consulta tabela banda de porco" ><br>
<br>

## Consulta Tabela Cidade<br>
Codigo: select * from cidade; <br>
<img src="https://raw.githubusercontent.com/trabAquarioInteligente/trab01/master/images/SelectSQL/SelectCidade.png" alt="" ><br>
<br>

## Consulta Tabela Contato<br>
Codigo: select * from contato; <br>
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/selects%20Final/Contato.png" alt="Consulta tabela Contatos" ><br>
<br>

## Consulta Tabela Endereco<br>
Codigo: select * from endereco; <br>
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/selects%20Final/Endereco.png" alt="Consulta tabela Endereço" ><br>
<br>

## Consulta Tabela Funcionario<br>
Codigo: select * from funcionario; <br>
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/selects%20Final/Funcionario.png" alt="Consulta tabela funcionario" ><br>
<br>

## Consulta Tabela Horario Receber<br>
Codigo: select * from horariorecebimento; <br>
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/ConsultaTabelas/Atualizadas/horario.png" alt="Consulta tabela Horario de Recebimento" ><br>
<br>

## Consulta Tabela Logradouro<br>
Codigo: select * from logradouro; <br>
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/SelectSQL/logradouro.png" alt="Consulta Tabela Logradouro" ><br>
<br>

## Consulta Tabela Pedido<br>
Codigo: select * from _pedido; <br>
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/selects%20Final/Pedido.png" alt="Consulta Tabela Pedido" ><br>
<br>

## Consulta Tabelas de Relacionamento
<br>
Codigo: select * from adiciona; <br>
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/selects%20Final/Adiciona.png" alt="Consulta Tabela Adiciona" ><br>
<br>
Codigo: select * from Da_baixa; <br>
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/selects%20Final/Da_Baixa.png" alt="Consulta Tabela Da_baixa" ><br>
<br>
Codigo: select * from Entrega; <br>
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/selects%20Final/Entrega.png" alt="Consulta Tabela Entrega" ><br>
<br>
Codigo: select * from recebe; <br>
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/selects%20Final/Recebe.png" alt="Consulta Tabela Pedido" ><br>
<br>
Codigo: select * from Compoe;<br>
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/selects%20Final/compoe.png" alt="Consulta Tabela Pedido" ><br>

#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>
<br>
## Consultar tabela Automovel<br>
Codigo: select * from automovel where modelo = 'Friorino';
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/WhereSql/Automovel.jpg?raw=true" 
alt="Consulta Automovel"><br>
<br>

<br>
## Consulta Bairro<br>
Codigo:select * from bairro where nome = 'Serra Dourada';
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/WhereSql/whereserra.png" alt="Consulta Bairro"><br>
<br>

<br>
## Consultar BandaPorco<br>
Consultando bandas de porco em estoque  <br>
Codigo: select * from bandaporco where quantidade > 0; <br>
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/select%20where/bandaPorco.png" 
alt="Consultar BandaPorco em estoque"><br>
<br>

<br>
## Filtrar funcionario por CPF<br>
Codigo: select * from funcionario where cpf = '12415612312';<br>
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/WhereSql/wherefuncionariocpf.png" 
alt="Filtrar funcionario por CPF"><br>
<br>

#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11)
    a) Criar 5 consultas que envolvam os operadores lógicos AND, OR e Not
<br>
## Filtrar banda de porco por data<br>
Codigo: select * from bandaporco where dataabate > '2018-09-1' and dataabate < '2018-11-10';<br>
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/select%20where/bandaporcofiltradata.png" 
alt="filtrar banda de porco por data"><br>
<br>

## Filtrar automovel pelo peso<br>
Codigo: select * from automovel where carga_maxima > 150 and carga_maxima < 400;<br>
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/ConsultaOperadores/filtroautomovel.png" 
alt="Filtrar automovel pelo peso"><br>
<br>

## Filtrar pedido por quantidade solicitada<br>
Codigo: select * from _pedido where numerobandas > 20 and numerobandas < 50;<br>
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/select%20where/pedidoquantidade.png" 
alt="Filtrar pedido por quantidade solicitada"><br>
<br>

## Filtrar horario de recebimento por periodo de tempo<br>
Codigo: select * from horariorecebimento where horarioinicio >= '07:00:00' and horariofim <= '12:00:00';<br>
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/select%20where/horariorecebimentoperiodo.png" 
alt="Filtrar horario de recebimento por periodo de tempo"><br>
<br>

## Filtrar funcionario por ID<br>
Codigo: select * from funcionario where idfuncionario = 1 or idfuncionario = 3;<br>
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/ConsultaOperadores/filtrarfuncionario.png" 
alt="Filtrar funcionario por ID"><br>
<br>
    
    b) Criar no mínimo 3 consultas com operadores aritméticos 
    
## Consulta horarios com Intervalo de tempo<br>
Codigo: select ho.*, (horariofim - horarioinicio) as "Intervalor de tempo" from horariorecebimento ho;<br>
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/select%20where/horariointervalotempo.png" 
alt="Consulta horarios com Intervalo de tempo"><br>
<br>

## Número de bandas que serão ou foram entregues<br>
Codigo: select sum(numerobandas) from _pedido;<br>
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/select%20where/pedidoSUNbandas.png" 
alt="Número de bandas que serão ou foram entregues"><br>
<br>

## Número de bandas de porco em estoque<br>
Codigo: select sum(quantidade) from bandaporco;<br>
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/select%20where/bandaporcoSUNqtdd.png" 
alt="Número de bandas de porco em estoque"><br>
<br>
    c) Criar no mínimo 3 consultas com operação de renomear nomes de campos ou tabelas
    
## Consulta pedidos que seram entregues<br>
Obs: Consulta Feita no dia 25/09/2018<br>
Codigo: select pe.*, (current_date - dataentrega) as "Dias restantes" from _pedido pe where (dataentrega - current_date) > -1;<br>
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/select%20where/diasrestantesparaentrega.png" 
alt="Consulta pedidos que seram entregues"><br>
<br>

## Consulta Motoristas<br>
Codigo: select fu.nome as "Motorista", au.placa, au.modelo from funcionario fu<br>
inner join automovel  au on (fu.idfuncionario = au.fk_funcionario_idfuncionario);<br>
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/ConsultasRenomear/motoristas.png" 
alt="Consulta Motoristas"><br>
<br>

## Consulta Vendedores<br>
Codigo: select fu.nome as "Vendedores", co.telefone from funcionario fu
inner join contato co on (co.fk_funcionario_idfuncionario = fu.idfuncionario);<br>
<img src= "https://github.com/trabAquarioInteligente/trab01/blob/master/images/select%20where/vendedores.png" 
alt="Consulta Vendedores"><br>
<br>
#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE E DATAS (Mínimo 12) <br>

    a) Criar outras 5 consultas que envolvam like ou ilike
    
## Consulta Tabela Funcionario<br>
Código: SELECT * FROM funcionario WHERE nome LIKE 'M%'; <br>
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/9funcionarioLike.jpg" alt="Consulta tabela funcionario" ><br>
<br>

## Consulta Tabela Funcionario<br>
Código: SELECT * FROM funcionario WHERE nome LIKE '%l'; <br>
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/9funcionarioLikeL.jpg" alt="Consulta tabela funcionario" ><br>
<br>

## Consulta Tabela Endereco<br>
Código: SELECT * FROM endereco WHERE nome ILIKE '%mar%'; <br>
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/9enderecoIlike.jpg" alt="Consulta tabela endereco" ><br>
<br>

## Consulta Tabela Cidade<br>
Código: SELECT * FROM cidade WHERE nome LIKE '_i%'; <br>
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/9cidadeLike.jpg" alt="Consulta tabela cidade" ><br>
<br>

## Consulta Tabela Bairro<br>
Código: SELECT * FROM bairro WHERE nome ILIKE '%MA%'; <br>
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/9bairroIlike.jpg" alt="Consulta tabela bairro" ><br>
<br>
    
    b) Criar uma consulta para cada tipo de função data apresentada.

## Consulta Tabela BandaPorco<br>
Código: SELECT id AS lote, dataAbate data_abate, (CURRENT_DATE - dataAbate) AS qntd_dias_após_abate FROM bandaPorco; <br>
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/94dataAbateDias.jpg" alt="Consulta tabela bandaPorco" ><br>
<br>

## Consulta Tabela BandaPorco<br>
Código: SELECT id AS lote, dataAbate AS data_abate, (age(CURRENT_DATE, dataAbate)) AS tempo_após_abate FROM bandaPorco; <br>
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/94dataAbateAnos.jpg" alt="Consulta tabela bandaPorco" ><br>
<br>

## Consulta Tabela BandaPorco<br>
Código: SELECT id AS lote, dataAbate AS data_abate, DATE_PART('year',(age(CURRENT_DATE,dataAbate))) AS anos_após_abate FROM bandaPorco; <br>
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/94dataAbateDatePartAge.jpg" alt="Consulta tabela bandaPorco" ><br>
<br>

## Consulta Tabela BandaPorco<br>
Código: SELECT id AS lote, dataAbate AS data_abate, EXTRACT('year' FROM dataAbate) AS ano_abate FROM bandaPorco; <br>
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/94dataAbateExtract.jpg" alt="Consulta tabela bandaPorco" ><br>
<br>

## Consulta Tabela BandaPorco<br>
Código: SELECT id AS lote, dataAbate AS data_abate, DATE_PART('year' ,dataAbate) AS ano_abate FROM bandaPorco; <br>
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/94dataAbateDatePartN.jpg" alt="Consulta tabela bandaPorco" ><br>
<br>

## Consulta Tabela _pedido<br>
Código: SELECT id AS lote, dataEntrega, (CURRENT_DATE - dataEntrega) AS qntd_dias_após_entrega FROM _pedido; <br>
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/94dataEntregaDias.jpg" alt="Consulta tabela _pedido" ><br>
<br>

## Consulta Tabela _pedido<br>
Código: SELECT id AS lote, dataEntrega, (age(CURRENT_DATE, dataEntrega)) AS tempo_após_entrega FROM _pedido; <br>
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/94dataEntregaTempo.jpg" alt="Consulta tabela _pedido" ><br>
<br>
    

#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>

## Update da tabela Cliente
update cliente set nomeficticio = 'Perim'
where nomeficticio = 'Ronaldo Pereira';

update cliente set nomeficticio = 'Atacadão'
where nomeficticio = 'Maurício Neto';

update cliente set nomeficticio = 'Extra Bom'
where nomeficticio = 'Nelson Cristo';

update cliente set nomeficticio = 'Extra Bom'
where nomeficticio = 'Luis Pinto';

update cliente set nomeficticio = 'Eldorado'
where nomeficticio = 'Edmundo Souza';

update cliente set nomeficticio = 'Carone'
where nomeficticio = 'Mauricio Neto';

insert into cliente(nomeficticio,cnpj)
values('Ok','66666666666'),('Oba','77777777777'),('Epa','88888888888');

select * from cliente;
<br>
       <img src = "https://github.com/trabAquarioInteligente/trab01/blob/master/images/alter.png"
       alt = "Tabela cliente com updates"><br>
       <br>
## Inserts para relacionar as informações recém adicionadas das tabelas

insert into endereco(nome,numero,complemento,fk_cliente_id,fk_logradouro_id)
values('Maximilio da Penha',406,null,8,1),('Rozendo Serapião',213,'Edificio Marlim apt.302',6,2),('Libano',666,null,7,2);

insert into bairro(nome)
values('Jabaeté'),('Soteco'),('Itaparica');

insert into compoe(fk_endereco_id,fk_bairro_id)
values(6,7),(7,8),(8,6);

INSERT INTO HorarioRecebimento (horarioInicio, horarioFim)
VALUES ('8:00:00', '10:00:00'), ('7:00:00', '9:00:00'), ('13:00:00', '15:00:00');

INSERT INTO recebe (fk_HorarioRecebimento_ID ,fk_Cliente_ID)
VALUES (6, 6), (7, 7), (8, 8);

## Codigos Atualizados
[Script atualizado](https://github.com/trabAquarioInteligente/trab01/blob/master/ScriptsSQL/codigos%20Definitivos/Codigoscomalter.sql)<br>

>## Marco de Entrega 04 em: (18/10/2017)<br>

#### 9.6	CONSULTAS COM JUNÇÃO E ORDENAÇÃO (Mínimo 6)<br>
        a) Uma junção que envolva todas as tabelas possuindo no mínimo 3 registros no resultado
<br>
<h2>Join com todas as tabelas</h2>
Codigo: select f.nome as "nome do funcionario", co.telefone "Telefone", bp.dataabate,<br>
bp.quantidade as "quantidade em estoque", pe.dataentrega as "Data da entrega", pe.numerobandas as "Numero de bandas",<br>
cl.nomeficticio as "Nome Ficticio", concat(ho.horarioinicio, ' até as ', ho.horariofim) as "Horario de recebimento",<br>
concat (lo.descricao,' ', en.nome, ', ', en.numero, ' ', ba.nome, ' - ', ci.nome, 'Complemento ', en.complemento) as "Endereço",<br>
au.placa, fun.nome as "Nome do caminhõneiro"<br>
from funcionario F <br>
inner join contato co on (co.fk_Funcionario_Idfuncionario = f.idfuncionario)<br>
inner join adiciona ad on (ad.fk_Funcionario_IDfuncionario = F.IDfuncionario)<br>
inner join Bandaporco bp on (bp.id = ad.fk_BandaPorco_ID)<br>
inner join da_baixa dba on (dba.fk_BandaPorco_ID = bp.id)<br>
inner join _pedido Pe on (pe.ID = dba.fk__Pedido_ID)<br>
inner join cliente cl on (cl.id = pe.fk_Cliente_ID)<br>
inner join recebe re on (cl.id = re.fk_cliente_ID)<br>
inner join horariorecebimento ho on (ho.id = fk_horariorecebimento_id)<br>
inner join endereco en on (en.fk_Cliente_id = cl.id)<br>
inner join logradouro lo on (lo.id = en.fk_logradouro_id)<br>
inner join compoe com on (com.fk_endereco_id = en.id)<br>
inner join bairro ba on (ba.id = com.fk_bairro_id)<br>
inner join cidade ci on (ci.id = ba.fk_cidade_id)<br>
inner join automovel au on (au.fk_cidade_id = ci.id)<br>
inner join entrega ent on (ent.fk_automovel_id = au.id)<br>
inner join funcionario fun on (fun.idfuncionario = au.fk_funcionario_idfuncionario);<br>
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/megajoin.png" alt="Join com todas as verdade"><br>
<br>
[Consulta Completa](https://docs.google.com/spreadsheets/d/1ekNDyKrmX4MSIioy8lLzK3td3kyC-o12FQ4mashp7DE/edit?usp=sharing)<br>

        b) Outras junções que o grupo considere como sendo as de principal importância para o trabalho
<br>
<h2>Quais placas de caminhões cada funcionario está relacionado</h2>
Codigo: select funcionario.nome, funcionario.cpf, automovel.placa from funcionario inner join automovel on (funcionario.idfuncinario = automovel.fk_funcionario_idfuncinario);
        <img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/Consultajoin/relacao_funcionario_veiculoplaca.png" alt="Quais placas de caminhões cada funcionario está relacionado"><br>
<br>

<h2>Qual cidade cada caminhoneiro atende</h2>
Codigo: select f.nome as "nome do funcionario", ci.nome as "nome da cidade" from funcionario f <br>
inner join automovel au on (f.idfuncionario = au.fk_funcionario_idfuncionario)<br>
inner join cidade ci on (au.fk_cidade_id = ci.id);<br>
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/Consultajoin/juncaocidadefuncionario.png" alt="Qual cidade cada caminhoneiro atende"><br>
<br>

<h2>Qual o telefone de cada funcionario</h2>
Codigo: select f.nome, co.telefone from funcionario f <br>
inner join contato co on (f.idfuncionario = fk_funcionario_idfuncionario)<br>
order by nome;<br>
        <img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/select%20join/funcionariosTelefones.png" alt="Qual o telefone de cada funcionario"><br>
<br>

<h2>Qual banda de porco cada funcionario adicionou no estoque</h2>
Codigo: select f.nome, ba.dataabate from funcionario f <br>
inner join adiciona ad on (f.idfuncionario = ad.fk_funcionario_idfuncionario)<br>
inner join bandaporco ba on (ad.fk_bandaporco_id = ba.id)<br>
order by f.nome;<br>
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/select%20join/funcionarioadicionabanda.png" alt="Qual banda de porco cada funcionario adicionou no estoque"><br>

<h2>Qual Venda cada funcionario fez</h2>
Codigo: select f.nome as "nome do funcionario", pe.dataentrega, pe.numerobandas, cl.nomeficticio as "nome do cliente"<br> 
from funcionario f<br> 
inner join _pedido pe on (f.idfuncionario = pe.fk_funcionario_idfuncionario)<br>
inner join cliente cl on (pe.fk_cliente_id = cl.id)<br>
order by f.nome;<br>
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/select%20join/funcionariofazpedido.png" alt="Qual Venda cada funcionario fez"><br>

<h2>Qual venda está relacionada a qual cliente</h2>
Codigo: select cl.id, cl.nomeficticio, pe.dataentrega, pe.numerobandas from _pedido pe <br>
inner join cliente cl on (pe.fk_cliente_id = cl.id) <br>
order by cl.nomeficticio;<br>
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/select%20join/vendaRelacionada.png" alt="Qual venda está relacionada a qual cliente"><br>

#### 9.7	CONSULTAS COM GROUP BY E FUNÇÕES DE AGRUPAMENTO (Mínimo 6)<br>

<h2>Número de vendas que cada funcionário realizou</h2>
Codigo: select f.nome as "nome do funcionario", count (f.nome) as "numero de vendas" from funcionario f<br>
inner join _pedido pe on (f.idfuncionario = pe.fk_funcionario_idfuncionario) group by f.nome;<br>
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/select%20group%20by/funcionariovendas.png" alt="Número de vendas cada funcionario realizou"><br>

<h2>Número telefones que cada funcionário tem</h2>
Codigo: select f.nome, count(nome) from funcionario f <br>
inner join contato co on (f.idfuncionario = fk_funcionario_idfuncionario) <br>
group by nome order by nome;<br>
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/select%20group%20by/numerotelefonefuncionario.png" alt="Quantos telefones cada funcionario tem"><br>

<h2>Número de vezes que cada funcionário adicionou produto no estoque</h2>
Codigo: select f.nome as "nome do funcionario", count (f.nome) as "quantas vezes o funcionario adicionou banda de porco no estoque" <br>
from funcionario f<br>
inner join adiciona pe on (f.idfuncionario = pe.fk_funcionario_idfuncionario) group by f.nome;<br>
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/select%20group%20by/estoquefuncionario.png" alt="Número de vezes que cada funcionário adicionou produto no estoque"><br>

<h2>Número de caminhões que são refrigerados e que não são refrigerados</h2>
Codigo: select isrefrigerado, count(isrefrigerado) from automovel group by isrefrigerado;<br>
inner join adiciona pe on (f.idfuncionario = pe.fk_funcionario_idfuncionario) group by f.nome;<br>
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/groupbyconsultas/groupbynumerodecaminhoesrefrigeradosoun%C3%A3o.png" alt="Número de caminhões que são refrigerados e que não são refrigerados"><br>

<h2>Número de clientes que cada horario de entrega é referente</h2>
Codigo: select horarioinicio, horariofim, count(fk_horariorecebimento_id) from recebe re<br>
inner join horariorecebimento ho on (re.fk_horariorecebimento_id = ho.id)<br>
group by fk_horariorecebimento_id, horarioinicio, horariofim;<br>
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/select%20group%20by/numClientesHorario.png" alt="Número de clientes que cada horario de entrega é referente"><br>

<h2>Número de horarios de entregas que cada clientes possui</h2>
Codigo: select cl.nomeficticio, count(cl.nomeficticio) from recebe re<br>
inner join cliente cl on (re.fk_cliente_id = cl.id)<br>
group by nomeficticio order by nomeficticio;<br>
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/select%20group%20by/numHorarioEntragacliente.png" alt="Número de horarios de entregas que cada clientes possui"><br>

#### 9.8	CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4)<br>
<h2>Funcionarios e automoveis que estão relacionados</h2>
Codigo: select fu.nome, au.placa from funcionario fu <br>
left join automovel au on (fu.idfuncionario = au.fk_funcionario_idfuncionario);<br>
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/outerjoin/funcionarioPlaca.png" alt="Funcionarios e automoveis que estão relacionados"><br>

<h2>Telefone que cada funcionario está relacionado</h2>
Codigo: select fu.nome, co.telefone from funcionario fu<br>
left join contato co on (fu.idfuncionario = fk_funcionario_idfuncionario)<br>
order by nome;<br>
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/outerjoin/funcionarioTelefone.png" alt="Telefone que cada funcionario está relacionado"><br>

<h2>funcionario e a banda de porco adicionada</h2>
Codigo: select fu.nome, ad.fk_bandaporco_id from funcionario fu<br>
left join adiciona ad on (ad.fk_funcionario_idfuncionario = fu.idfuncionario)<br>
order by fu.nome;<br>
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/outerjoin/funcionarioBandaPorco.png" alt="funcionario e a banda de porco adicionada"><br>

<h2>Qual pedido cada funcionario adicionou</h2>
Codigo: select fu.nome, pe.id as "id do pedido" from funcionario fu<br>
left join _pedido pe on (pe.fk_funcionario_idfuncionario = fu.idfuncionario)<br>
order by fu.nome, pe.id;<br>
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/outerjoin/funcionarioPedido.png" alt="Qual pedido cada funcionario adicionou"><br>

#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Mínimo 6)<br>
        a) Uma junção que envolva Self Join

<h2>Número de bandas que foram entregues e que serão entregues</h2>
Obs: Consulta Realizada no dia 27/09/2018
Codigo: select sum(pe1.numerobandas) as "Número de bandas que serão entregues",<br>
(sum(pe2.numerobandas) - sum(pe1.numerobandas)) as "número de bandas que foram entregues"<br> 
from (select * from _pedido where (dataentrega - current_date) > -1) pe1 <br>
right outer join _pedido pe2 on ((pe1.id = pe2.id));<br>
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/selfJoin.png" alt="Número de bandas que foram entregues e que serão entregues"><br>

        b) Outras junções com views que o grupo considere como sendo de relevante importância para o trabalho
<h2>Endereço completo sem as chaves estrangeiras</h2>
Codigo: create view endereco_sem_estrangeira as (select en.id, en.nome, en.numero, en.complemento, lo.descricao as "Logradouro",<br> 
ba.nome as "Bairro", ci.nome as "cidade" from endereco en<br>
inner join logradouro lo on (en.fk_logradouro_id = lo.id)<br>
inner join compoe co on (co.fk_endereco_id = en.id)<br>
inner join bairro ba on (ba.id = co.fk_bairro_id)<br>
inner join cidade ci on (ci.id = ba.fk_cidade_id));<br>
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/Views/ViewEndereco.png" alt="Endereço completo sem as chaves estrangeiras"><br>

<h2>Bandas de porco em estoque</h2>
Codigo: create view banda_porco_estoque as (select * from bandaporco where quantidade > 0);<br>
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/Views/viewBanda.png" alt="Bandas de porco em estoque"><br>

<h2>Número de bandas que cada cliente ira receber</h2>
Obs: Consulta Realizada no dia 26/11/2018
Codigo: create view pedido_agendado as (select pe.dataentrega, pe.numerobandas, cl.nomeficticio from _pedido pe<br>
inner join cliente cl on (pe.fk_cliente_id = cl.id)<br>
where (dataentrega - current_date) > 0);<br>
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/Views/ViewClienteBanda.png" alt="Número de bandas que cada cliente ira receber"><br>

<h2>Qual cidade cada motorista atende</h2>
Codigo: create view caminhoneiro_municipio as (select fu.nome, au.placa, ci.nome as "Cidade" from funcionario fu<br>
inner join automovel au on (au.fk_funcionario_idfuncionario = fu.idfuncionario)<br>
inner join cidade ci on (au.fk_cidade_id = ci.id));<br>
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/Views/ViewCidadeMotorista.png" alt="Qual cidade cada motorista atende"><br>

<h2>Bandas de porco vendidas</h2>
Codigo: create view banda_porco_vendidas as (select * from bandaporco where quantidade = 0);<br>
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/Views/ViewBandasVendidas.png" alt="Bandas de porco vendidas"><br>

<h2>clientes e os horarios que cada um recebe.</h2>
Codigo: create view cliente_horarios as (select cl.nomeficticio, cl.id, cl.cnpj, ho.horarioinicio, ho.horariofim from cliente cl<br>
inner join recebe re on (cl.id = re.fk_cliente_id)<br>
inner join horariorecebimento ho on (ho.id = re.fk_horariorecebimento_id));<br>
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/Views/ViewClienteHorario.png" alt="clientes e os horarios que cada um recebe"><br>

#### 9.10	SUBCONSULTAS (Mínimo 3)<br>
<h2>Bandas de porco em estoque que cada funcionario adicionou</h2>
Codigo: select fu.nome, fu.cpf, fu.idfuncionario, ba.dataabate, ba.quantidade, ba.id from funcionario fu<br>
inner join adiciona ad on (ad.fk_funcionario_idfuncionario = fu.idfuncionario)<br>
inner join (select * from bandaporco where quantidade > 0) ba on (ba.id = ad.fk_bandaporco_id);<br>
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/Views/SubBandaFuncionario.png" alt="Bandas de porco em estoque que cada funcionario adicionou"><br>

### 10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES PARA APRESENTAÇAO FINAL (Mínimo 6 e Máximo 10)<br>

### 11 Backup completo do banco de dados postgres 
    a) deve ser realizado no formato "backup" 
        (Em Dump Options #1 Habilitar opções Don't Save Owner e Privilege)
    b) antes de postar o arquivo no git o mesmo deve ser testado/restaurado por outro grupo de alunos/dupla
    
 <a href="https://github.com/trabAquarioInteligente/trab01/blob/master/transportePereciveis.backup?raw=true">Backup</a>
    
    c) informar aqui o grupo de alunos/dupla que realizou o teste.
    André Altivo
    Gabriela Piffer
    Lucca Pedrini
    Marcelo Mendes

### 12	TUTORIAL COMPLETO DE PASSOS PARA RESTAURACAO DO BANCO E EXECUCAO DE PROCEDIMENTOS ENVOLVIDOS NO TRABALHO PARA OBTENÇÃO DOS RESULTADOS<br>
        a) Outros grupos deverão ser capazes de restaurar o banco 
        b) executar todas as consultas presentes no trabalho
        c) executar códigos que tenham sido construídos para o trabalho 
        d) realizar qualquer procedimento executado pelo grupo que desenvolveu o trabalho
        
<h2>Tutorial Backup</h2>
1 - Em um banco de dados sem nenhuma tabela clique com o botão direito.
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/Tutorial/passo1.png" alt="passo1"><br>
2 - Vá na opção Restore
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/Tutorial/passo2.png" alt="passo2"><br>
3 - Na aba que ira abrir em Format escolha Custom or tar
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/Tutorial/passo3.png" alt="passo3"><br>
4 - Em filename clique em ... para procurar o arquivo<br>
5 - Na pasta onde você salvou o backup procure pelo arquivo transportePereciveis.backup e selecione ele
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/Tutorial/passo%205.png" alt="passo5"><br>
6 - Em Rolename escolha "postgres"
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/Tutorial/passo6.png" alt="passo6"><br>
7 - depois vá em restaurar<br>
8 - logo após ira aparecer essa tela, so clicar em done e testar o banco de dados. 
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/Tutorial/passo8.png" alt="passo8"><br>
        
### 13   DIFICULDADES ENCONTRADAS PELO GRUPO<br>
>## Marco de Entrega Final em: (08/11/2018)<br>
        
### 14  FORMATACAO NO GIT: https://help.github.com/articles/basic-writing-and-formatting-syntax/
<comentario no git>
    
##### About Formatting
    https://help.github.com/articles/about-writing-and-formatting-on-github/
    
##### Basic Formatting in Git
    
    https://help.github.com/articles/basic-writing-and-formatting-syntax/#referencing-issues-and-pull-requests
    
    
##### Working with advanced formatting
    https://help.github.com/articles/working-with-advanced-formatting/
#### Mastering Markdown
    https://guides.github.com/features/mastering-markdown/



    

    
### OBSERVAÇÕES IMPORTANTES

#### Todos os arquivos que fazem parte do projeto (Imagens, pdfs, arquivos fonte, etc..), devem estar presentes no GIT. Os arquivos do projeto vigente não devem ser armazenados em quaisquer outras plataformas.
1. Caso existam arquivos com conteúdos sigilosos, comunicar o professor que definirá em conjunto com o grupo a melhor forma de armazenamento do arquivo.

#### Todos os grupos deverão fazer Fork deste repositório e dar permissões administrativas ao usuário do git "profmoisesomena", para acompanhamento do trabalho.

#### Os usuários criados no GIT devem possuir o nome de identificação do aluno (não serão aceitos nomes como Eu123, meuprojeto, pro456, etc). Em caso de dúvida comunicar o professor.


Link para BrModelo:<br>
http://sis4.com/brModelo/brModelo/download.html
<br>


Link para curso de GIT<br>
![https://www.youtube.com/curso_git](https://www.youtube.com/playlist?list=PLo7sFyCeiGUdIyEmHdfbuD2eR4XPDqnN2?raw=true "Title")


