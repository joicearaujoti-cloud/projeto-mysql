INSERT INTO Cliente (nome, telefone, endereco) VALUES
('Ana Souza', '11988887777', 'Rua Flores, 22'),
('Carlos Silva', '11977776666', 'Av. Brasil, 150'),
('Mariana Costa', '11966665555', 'Rua das Laranjeiras, 80');

INSERT INTO Entregador (nome, veiculo) VALUES
('João Motoboy', 'Moto Honda CG 160'),
('Pedro Correia', 'Bicicleta');

INSERT INTO Produto (nome, preco, categoria) VALUES
('Hambúrguer Clássico', 22.00, 'Lanche'),
('Pizza Calabresa', 38.00, 'Pizza'),
('Refrigerante Lata', 6.00, 'Bebida'),
('Batata Frita', 12.00, 'Acompanhamento');

INSERT INTO Pedido (id_cliente, tipo_retirada, status_pedido) VALUES
(1, 'delivery', 'recebido'),
(2, 'presencial', 'preparando'),
(3, 'delivery', 'recebido');

INSERT INTO ItemPedido (id_pedido, id_produto, quantidade, preco_unitario) VALUES
(1, 1, 2, 22.00),
(1, 3, 2, 6.00),
(2, 2, 1, 38.00),
(3, 4, 1, 12.00);

INSERT INTO Entrega (id_pedido, id_entregador, status_entrega, tempo_estimado) VALUES
(1, 1, 'a_caminho', 30),
(3, 2, 'pendente', 45);
