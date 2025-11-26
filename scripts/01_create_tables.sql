CREATE DATABASE SaborExpress;
USE SaborExpress;

CREATE TABLE Cliente (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20),
    endereco VARCHAR(150)
);

CREATE TABLE Entregador (
    id_entregador INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    veiculo VARCHAR(50)
);

CREATE TABLE Produto (
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    categoria VARCHAR(50)
);

CREATE TABLE Pedido (
    id_pedido INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT,
    data_pedido DATETIME DEFAULT CURRENT_TIMESTAMP,
    tipo_retirada ENUM('presencial', 'delivery'),
    status_pedido ENUM('recebido','preparando','pronto','a_caminho','concluido'),
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
);

CREATE TABLE ItemPedido (
    id_item INT PRIMARY KEY AUTO_INCREMENT,
    id_pedido INT,
    id_produto INT,
    quantidade INT NOT NULL,
    preco_unitario DECIMAL(10,2),
    FOREIGN KEY (id_pedido) REFERENCES Pedido(id_pedido),
    FOREIGN KEY (id_produto) REFERENCES Produto(id_produto)
);

CREATE TABLE Entrega (
    id_entrega INT PRIMARY KEY AUTO_INCREMENT,
    id_pedido INT,
    id_entregador INT,
    status_entrega ENUM('pendente','a_caminho','entregue'),
    tempo_estimado INT,
    FOREIGN KEY (id_pedido) REFERENCES Pedido(id_pedido),
    FOREIGN KEY (id_entregador) REFERENCES Entregador(id_entregador)
);
