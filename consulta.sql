-- RETORNAR AS CONTAS COM SITUACAO = 1
-- CAMPOS OBRIGATÓRIOS
-- ID , NOME, CPF DO CLIENTE, DATA DE VENCIMENTO, VALOR DA CONTA


-- CRIAÇÃO DA VIEW
CREATE VIEW vw_contasNaoPagas AS
SELECT c.ID, c.nome, cr.DataVencimento AS vencimento, cr.valor AS valorConta
FROM cliente c
JOIN contareceber cr ON c.ID = cr.Cliente_ID
WHERE cr.situacao = '1';


-- CONSULTAR A VIEW E SEU RESULTADO (ADICIONADO COMO PRINT DO RESULTADO -> view_resultado.jpg)
SELECT * FROM
vw_contasNaoPagas
LIMIT 5;