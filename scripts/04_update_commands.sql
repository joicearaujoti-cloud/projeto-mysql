UPDATE Pedido
SET status_pedido = 'preparando'
WHERE id_pedido = 1;

UPDATE Produto
SET preco = 40.00
WHERE nome = 'Pizza Calabresa';

UPDATE Entrega
SET id_entregador = 1
WHERE id_entrega = 2;
