-- INSERIR DADOS NA TABELA ESTADO
INSERT INTO estado (nome, UF) values 
('Acre', 'AC'), 
('Alagoas', 'AL'),
('Amapá', 'AP'), 
('Amazonas', 'AM'),
('Bahia', 'BA'),
('Ceará', 'CE'), 
('Espirito Santo', 'ES'),
('Goiás', 'GO'), 
('Maranhão', 'MA'), 
('Matro Grosso', 'MT'),
('Mato Grosso do Sul', 'MS'),
('Minas Gerais', 'MG'),
('Pará', 'PA'), 
('Paraíba', 'PB'), 
('Paraná', 'PR'),
('Pernambuco', 'PE'), 
('Piauí', 'PI'),
('Rio de Janeiro','RJ'),
('Rio Grande do Norte','RN'), 
('Rio Grande do Sul','RS'), 
('Rondônia','RO'),
('Roraima', 'RR'), 
('Santa Catarina','SC'),
('São Paulo', 'SP'), 
('Sergipe', 'SE'), 
('Tocantins', 'TO'), 
('Distrito Federal','DF')


-- MODIFICADO TIPO DO CAMPO ABAIXO PORQUE SE TRATA DO NOME DO MUNICIPIO, ENTÃO VARCHAR DEVIA SER A ESCOLHA CORRETA (CORRIGIDO NO DIAGRAMA)
ALTER TABLE cliente
MODIFY COLUMN endMunicipio varchar(100);


-- INSERIR DADOS NA TABELA MUNICIPIO
INSERT INTO municipio (nome, codIBGE, Estado_Id) values
('Rio Comprido', 33, 17), 
('Governador Valadares', 3127701, 27), 
('Salvador',2927408, 5),
('Governador Jorge Teixeira', 1101005, 4), 
('Pelotas', 4314407, 19)


-- INSERIR DADOS NA TABELA CLIENTE
INSERT INTO cliente (nome, cpf, celular, endLogradouro, endNumero, endMunicipio, endCEP, Municipio_ID) values
('Ted Mosby', '56591049754', '11111111', ' Rua da Estrela', '36', 'Rio Comprido', '20251970', 1),
('Marshall Eriksen', '63552377980', '222222222', 'Avenida Minas Gerais - Nossa Senhora das Graças,', '1188', 'Governador Valadares', '35060970', 2),
('Robin Scherbastsky', '61800756461', '333333333', 'Avenida Afrânio Peixoto - Lobato', 's/n', 'Salvador', '40470630', 3),
('Barney Stinson', '25397758965', '444444444', ' Avenida Itaúba', 's/n', 'Governador Jorge Teixeira', '69088240', 4),
('Lily Aldrin', '00348158807', '55555555', 'Rodovia BR-392 - Fragata', 's/n', 'Pelotas', '96050500', 5)


--ALTERADO NOME DA COLUNA SITUAÇÃO POIS ESTAVA COM ACENTUAÇÃO
ALTER TABLE contareceber
CHANGE situação situacao ENUM('1', '2', '3');


-- INSERIR DADOS NA TABELA CONTARECEBER
INSERT INTO contareceber(faturaVendaID, dataConta, dataVencimento, valor, situacao, Cliente_ID) values
(025, '2023-07-22', '2023-08-05', 1200.50, '1', 5),
(019, '2023-07-15', '2023-07-20', 850.90, '3', 1),
(026, '2023-07-20', '2023-07-30', 1000.00, '3', 2),
(001, '2023-05-20', '2023-05-30', 1050.00, '2', 3),
(012, '2023-06-20', '2023-06-29', 3500.96, '1', 4)
