-- ---------------------------------------------------
-- RELATÓRIO -  pessoas compraram carros no último mês
-- ---------------------------------------------------
SELECT tipo, YEAR(data), COUNT(*) As Total
FROM icar.pedido WHERE YEAR(data)='2020' AND MONTH(data)='01' AND tipo = 'Compra'
GROUP BY YEAR(data);