-- ---------------------------------------------------
-- RELATÓRIO - pessoas alugaram carros no último ano
-- ---------------------------------------------------
SELECT tipo, YEAR(data), COUNT(*) As Total
FROM icar.pedido WHERE YEAR(data)='2020' AND tipo = 'Aluguel'
GROUP BY YEAR(data);