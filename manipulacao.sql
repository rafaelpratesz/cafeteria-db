INSERT INTO produtos (nome, preco, estoque) VALUES
('Café Espresso', 6.00, 50),
('Pão de Queijo', 4.00, 100),
('Capuccino', 8.50, 30);

INSERT INTO pedidos (data, produto_id, quantidade, cliente) VALUES
('2025-07-12 10:15:00', 1, 2, 'Ana Paula');

UPDATE produtos SET estoque = estoque - 2 WHERE id = 1;

DELETE FROM pedidos WHERE id = 1;

SELECT pedidos.id, produtos.nome AS produto, pedidos.quantidade, pedidos.cliente, pedidos.data
FROM pedidos
JOIN produtos ON pedidos.produto_id = produtos.id;

