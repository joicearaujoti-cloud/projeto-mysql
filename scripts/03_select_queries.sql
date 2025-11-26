SELECT p.id_pedido, c.nome AS cliente, p.status_pedido
FROM Pedido p
JOIN Cliente c ON p.id_cliente = c.id_cliente
ORDER BY p.id_pedido;

SELECT nome, preco
FROM Produto
ORDER BY preco DESC
LIMIT 3;

SELECT e.id_entrega, en.nome AS entregador, e.status_entrega
FROM Entrega e
JOIN Entregador en ON e.id_entregador = en.id_entregador
WHERE e.status_entrega = 'pendente';

SELECT i.id_item, p.nome AS produto, i.quantidade, i.preco_unitario
FROM ItemPedido i
JOIN Produto p ON i.id_produto = p.id_produto
WHERE id_pedido = 1;

SELECT id_pedido, tipo_retirada, status_pedido
FROM Pedido
WHERE tipo_retirada = 'delivery'
AND status_pedido <> 'concluido';
