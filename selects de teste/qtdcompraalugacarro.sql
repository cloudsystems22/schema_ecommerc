-- --------------------------------------------------------------------
-- RELATÓRIO - pessoas alugaram e depois compraram o mesmo carro
-- --------------------------------------------------------------------
SELECT tipo, data, Cliente_id, Carro_id, COUNT(*) As 'Total Pessoas'
FROM icar.pedido WHERE YEAR(data)='2020' AND MONTH(data)='01'
GROUP BY data;