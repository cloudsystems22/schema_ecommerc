-- -------------------------------------------------------
-- RELATÓRIO - Qual modelo é o mais procurado?
-- -------------------------------------------------------
SELECT p.Carro_id, c.modelo as 'Modelo mais procurado', c.marca, COUNT(*) As 'Total' 
FROM icar.pedido p
INNER JOIN carro c ON p.Carro_id = c.id
group by Carro_id;