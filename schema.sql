CREATE TABLE produtos (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(8,2) NOT NULL,
    estoque INTEGER NOT NULL
);

CREATE TABLE pedidos (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    data DATETIME NOT NULL,
    produto_id INTEGER NOT NULL,
    quantidade INTEGER NOT NULL,
    cliente VARCHAR(100),
    FOREIGN KEY (produto_id) REFERENCES produtos(id)
);

-- Inserir produtos
INSERT INTO produtos (nome, preco, estoque) VALUES
('Café Espresso', 6.00, 50),
('Pão de Queijo', 4.00, 100),
('Capuccino', 8.50, 30);

-- Inserir pedidos
INSERT INTO pedidos (data, produto_id, quantidade, cliente) VALUES
('2025-07-12 10:15:00', 1, 2, 'Ana Paula'),
('2025-07-12 10:30:00', 2, 4, 'Carlos Silva'),
('2025-07-12 11:00:00', 3, 1, 'Bruno Souza');