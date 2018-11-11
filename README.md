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
    
> A Empresa DevCom precisa inicialmente dos seguintes relatórios:
* Relatório que informe quais são os gerentes de cada departamento incluindo as seguintes informações: número do departamento,  nome do departamento, e nome do gerente.
* Relatório de empregados por projeto incluindo as seguintes informações: número do projeto, nome do projeto, rg do empregado, nome do empregado e quantidade de horas de trabalho do empregado alocadas ao projeto.
* Relatório de empregados com dependentes incluindo as seguintes informações: rg do empregado, nome do empregado, nome do dependente, tipo de relação, data de nascimento do dependente e sexo do dependente.
* Relatório com a quantidade de empregados por cada departamento incluindo as seguintes informações: nome do departamento, supervisor e quantidade de empregados alocados no departamento.
* Relatório de supervisores e supervisionados incluindo as seguintes informações: nome do supervisor e nome do supervisionado.
 
 
#### 4.2 TABELA DE DADOS DO SISTEMA:

[Tabela de Dados](https://github.com/trabAquarioInteligente/trab01/blob/master/Planilha/TransportePerecivel.xlsx)<br>

>## Marco de Entrega 01 em: (30/08/2018)<br>

### 5.MODELO CONCEITUAL<br>
    A) NOTACAO ENTIDADE RELACIONAMENTO 
        * Para nosso prótótipo limitaremos o modelo conceitual nas 6 principais entidades do escopo
        * O protótipo deve possui no mínimo duas relações N para N
        * o mínimo de entidades do modelo conceitual será igual a 5
        

![Alt text](https://raw.githubusercontent.com/trabAquarioInteligente/trab01/master/images/Conceitual.png)
[Modelo Conceitual - Formato BrModelo]https://(github.com/trabAquarioInteligente/trab01/blob/master/images/modeloConceitualATT.png)<br>
    
    B) NOTACAO UML (Caso esteja fazendo a disciplina de analise)
    C) QUALIDADE 
        Garantir que a semântica dos atributos seja clara no esquema
        Criar o esquema de forma a garantir a redução de informação redundante, possibilidade de valores null, 
        e tuplas falsas
    
        
    
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
    
    EXEMPLO:
    CLIENTE: Tabela que armazena as informações relativas ao cliente<br>
    CPF: campo que armazena o número de Cadastro de Pessoa Física para cada cliente da empresa.<br>
    
    Tabela Cidades : tabela que armazena os nomes das cidades.
    Codigo: Este campo é uma chave primária, ele é utilizado para evitar redundância no banco. de dados, levando em conta que as cidades     do projeto se repetem. 
    Cidade: O nome da cidade cadastrada. 

    Tabela Endereço : nela todos os endereços são armazenados.
    Codigo: valor inteiro e chave primária (funcionários, empresa e pedidos são as tabelas que se relacionam com esse campo). 
    Numero: valor inteiro (Ex.: número da casa).
    Rua: String onde o nome da rua é armazenado. 
    Bairro: String onde o bairro é armazenado. 
    Cep: String onde o cep é armazenado.

    Tabela Funcionario : Armazena informações sobre os funcionários da empresa. 
    Codigo: Chave primária inteiro, armazena o cpf. 
    Nome: Nome do Funcionário. 
    codEnd: Forma de relacionar a tabela Endereço com funcionário. 
    Funcao: O que o funcionário faz na empresa. 

    Tabela Veículo : Informações sobre os Veículos são armazenadas aqui. 
    codigo: Chave Primária. 
    Refrigerado: boolean (Armazena a informação True quando o Veículo é refrigerado). pesoMaximo: Número real que armazena o peso           máximo.
    modelo: String que armazena o modelo do veículo. 
    placa: String que armazena a placa do veículo. 
    codMot: Forma de relacionar a tabela motorista com a tabela Veículo. 

    Tabela Motorista : Informações sobre os Motoristas. 
    codigo: Chave Primária. 
    codFun: Relaciona a tabela Motorista com a funcionário. 
    codVeiculo: Relaciona a tabela Veículo com a tabela Motorista. 
    codCidadeEntrega: Relaciona a tabela Motorista com a tabela Cidade. 

    Tabela Estoque : Não seria bem uma tabela, aqui armazena informações sobre o número total de bandas no estoque. 
    quantidadeT: Variavel que ira representar a quantidade total em estoque. 

    Tabela Produto : Informações sobre os produtos em estoque. 
    codigo: Chave Primária. 
    dataAbate: Dia que o porco foi sacrificado. 
    quantidade: Número de Bandas de porco no estoque. 

    Tabela Empresa : Informações sobre os clientes. 
    codigo: chave Primária. 
    nome: Nome da Empresa. 
    codEnd: Relaciona a tabela endereço com a tabela Empresa, assim que é armazenado o endereço da empresa.

    Tabela HorarioEntrega : Armaze os horários de entrega das empresas. 
    codigo: chave Primária. 
    codEmp: forma de armazenar informações da empresa nessa tabela. 
    horarioI: Horário que a empresa começa a receber entregas. 
    horarioF: Horário que a empresa termina de receber entregas. 
    Obs.: essa tabela está separada para normalizar, levando em consideração que empresas podem ter horários diferentes para receber o       pedido.

    Tabela AcessoSistema : Define o que cada funcionário faz no sistema. 
    codigo: Chave Primária. 
    codFun: relaciona a tabela AcessoSistema com a tabela funcionario. 
    senha: senha de acesso ao sistema. 
    alterarEstoque: True caso esse funcionário irá alterar o estoque. 
    agendarEntrega: True caso esse funcionário irá agendar as entregas. utilizarSistemadeEntrega: True caso esse funcionário irá             utilizar o navegador para procurar a melhor rota. 
    cancelarEntrega: True caso esse funcionário cancelara a entre previamente agendada.

    Tabela pedido 
    codigo: Chave Primária. 
    dataAgen: Dia que foi feita a encomenda. 
    dataEnt: Dia que a entrega será efetuada na empresa. 
    quantidade: Número de Bandas de porco encomendadas. 
    codEmp: Forma de relacionar a tabela pedido com a tabela empresa. 
    codMot: Forma de relacionar a tabela pedido com a tabela motorista. (aqui define qual motorista irá entregar). 
    codEnd: Forma de relacionar a tabela pedido com a tabela endereço. (Aqui sera armazenado o endereço da entrega). 
    precoV: Preço de venda do produto.



### 6	MODELO LÓGICO<br>
![Alt text](https://raw.githubusercontent.com/trabAquarioInteligente/trab01/master/images/Logico.png)
        
[Modelo Lógico](https://github.com/trabAquarioInteligente/trab01/blob/master/images/L%C3%B3gico_1.png)<br>

### 7	MODELO FÍSICO<br>
[Modelo Físico](https://github.com/trabAquarioInteligente/trab01/blob/master/ScriptsSQL/modeloFIsico.sql)<br>         
        
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
#### 8.1 DETALHAMENTO DAS INFORMAÇÕES
[Detalhamento das Informaçoes](https://github.com/trabAquarioInteligente/trab01/blob/master/ScriptsSQL/detalhamentoInformacao.sql)<br>

#### 8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELAS E INSERÇÃO DOS DADOS
[Sript para criação de tabelas e inserção dos dados](https://github.com/trabAquarioInteligente/trab01/blob/master/ScriptsSQL/criacaoInsercao.sql)<br>
#### 8.3 INCLUSÃO DO SCRIPT PARA EXCLUSÃO DE TABELAS EXISTENTES, CRIAÇÃO DE TABELA NOVAS E INSERÇÃO DOS DADOS
[Script para exclusão de tabelas existentes, criação de tabelas novas e inserção dos dados](https://github.com/trabAquarioInteligente/trab01/blob/master/ScriptsSQL/destruirTabelas.sql)<br>
>## Marco de Entrega 03 em: (27/09/18) <br>

### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
    OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
## Consulta Tabela Cidades<br>
Codigo: select * from Cidades; <br>
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/ConsultaTabelas/Cidades.png" alt="Cidades" ><br>
<br>

## Consulta Tabela Endereço<br>
Codigo: select * from Endereco;
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/ConsultaTabelas/Endere%C3%A7o.png" alt="Endereço" ><br>
<br>

## Consulta Tabela Veiculo<br>
Codigo: select * from Veiculo; <br>
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/ConsultaTabelas/Veiculos.png" alt="Veiculo" ><br>
<br>

## Consulta Tabela Acesso Sistema<br>
Codigo: select * from acessosistema;<br>
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/ConsultaTabelas/acessosistema.png" alt="Acesso Sistema" ><br>
<br>

## Consulta Tabela Clientes<br>
Codigo: select * from empresa;<br>
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/ConsultaTabelas/empresas.png" alt="Clientes" ><br>
<br>

## Consulta Tabela Funcionarios<br>
Codigo: select * from Funcionario;<br>
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/ConsultaTabelas/funcionarios.png" alt="Funcionarios" ><br>
<br>

## Consulta Tabela Horario de Entrega<br>
Codigo: select * from horarioentrega;<br>
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/ConsultaTabelas/horarioentrega.png" alt="Horarios de Entrega" ><br>
<br>

## Consulta Tabela Motorista<br>
Codigo: select * from motorista;<br>
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/ConsultaTabelas/motorista.png" alt="Motorista"><br>
<br>

## Consulta Tabela Pedido<br>
Codigo: select * from pedido;<br>
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/ConsultaTabelas/pedido.png" alt="Pedido"><br>
<br>

## Consulta Tabela Produto<br>
Codigo: select * from produto;<br>
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/ConsultaTabelas/produto.png" alt="Produto"><br>
<br>

#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>
<br>
## Consultar Endereços em Vila Velha<br>
Codigo: select * from endereco where codcidade = 1;
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/Consultas%20Where/endere%C3%A7osemvilavelha.png" alt="Consulta Vila Velha"><br>
<br>

<br>
## Consultar Entregas para depois do dia 20/10/2018<br>
Codigo: select * from pedido where dataent >= '2018-10-20';
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/Consultas%20Where/Entregasparadepoisdodia20102018.png" alt="Entregadas para depois do dia 20/10/2018"><br>
<br>

<br>
## Consultar Produtos que estão no estoque antes do dia 20/10/2018<br>
Codigo: select * from produto where dataabate < '2018-10-20';
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/Consultas%20Where/ProdutosMaisAntigosEstoque.png" alt="Produtos mais antidos no estoque"><br>
<br>

<br>
## Consultar funcionarios que são motoristas Velha<br>
Codigo: select * from funcionario where funcao = 'Motorista';
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/Consultas%20Where/Funcionariosmotorista.png" alt="funcionarios que são motoristas"><br>
<br>

#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11)
    a) Criar 5 consultas que envolvam os operadores lógicos AND, OR e Not
<br>
## Consultar Endereços em vila velha ou vitoria<br>
Codigo: select * from endereco where codcidade = 1 or codcidade = 2;
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/Consultasoperadores/enderecosemvilavelhaouvitoria.png" alt="Endereços em vila velha ou vitoria"><br>
<br>

<br>
##Consultar Endereços nos bairros Jabaete e Manguinhos<br>
Codigo: select * from funcionario where funcao = 'Motorista';
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/Consultasoperadores/enderecosnosbairrosjabaeteemanguinhos.png" alt="Endereços nos bairros Jabaete e Manguinhos"><br>
<br>

<br>
## Consultar Pedidos com Quantidade Maior que 40 e menor que 200<br>
Codigo: select * from funcionario where funcao = 'Motorista';
<img src="https://github.com/trabAquarioInteligente/trab01/blob/master/images/Consultasoperadores/pedidoscomquantidademaiorque40emenorque200.png" alt="Pedidos com Quantidade Maior que 40 e menor que 200"><br>
<br>
    
    b) Criar no mínimo 3 consultas com operadores aritméticos 
    c) Criar no mínimo 3 consultas com operação de renomear nomes de campos ou tabelas
#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE E DATAS (Mínimo 12) <br>
    a) Criar outras 5 consultas que envolvam like ou ilike
    b) Criar uma consulta para cada tipo de função data apresentada.

#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>

>## Marco de Entrega 04 em: (18/10/2017)<br>

#### 9.6	CONSULTAS COM JUNÇÃO E ORDENAÇÃO (Mínimo 6)<br>
        a) Uma junção que envolva todas as tabelas possuindo no mínimo 3 registros no resultado
        b) Outras junções que o grupo considere como sendo as de principal importância para o trabalho
#### 9.7	CONSULTAS COM GROUP BY E FUNÇÕES DE AGRUPAMENTO (Mínimo 6)<br>
#### 9.8	CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4)<br>
#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Mínimo 6)<br>
        a) Uma junção que envolva Self Join
        b) Outras junções com views que o grupo considere como sendo de relevante importância para o trabalho
#### 9.10	SUBCONSULTAS (Mínimo 3)<br>
### 10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES PARA APRESENTAÇAO FINAL (Mínimo 6 e Máximo 10)<br>

### 11 Backup completo do banco de dados postgres 
    a) deve ser realizado no formato "backup" 
        (Em Dump Options #1 Habilitar opções Don't Save Owner e Privilege)
    b) antes de postar o arquivo no git o mesmo deve ser testado/restaurado por outro grupo de alunos/dupla
    c) informar aqui o grupo de alunos/dupla que realizou o teste.

### 12	TUTORIAL COMPLETO DE PASSOS PARA RESTAURACAO DO BANCO E EXECUCAO DE PROCEDIMENTOS ENVOLVIDOS NO TRABALHO PARA OBTENÇÃO DOS RESULTADOS<br>
        a) Outros grupos deverão ser capazes de restaurar o banco 
        b) executar todas as consultas presentes no trabalho
        c) executar códigos que tenham sido construídos para o trabalho 
        d) realizar qualquer procedimento executado pelo grupo que desenvolveu o trabalho
        
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


