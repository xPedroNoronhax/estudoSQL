-- Criar a tabela
CREATE TABLE clientes (
    id INTEGER PRIMARY KEY,
    nome TEXT,
    cidade TEXT,
    idade INTEGER,
    saldo REAL
);

-- Inserir os dados
INSERT INTO clientes (id, nome, cidade, idade, saldo) VALUES
(1, 'Ana', 'São Paulo', 25, 1000),
(2, 'Bruno', 'Rio de Janeiro', 30, 200),
(3, 'Carla', 'Belo Horizonte', 28, 500),
(4, 'Diego', 'São Paulo', 35, 50),
(5, 'Elisa', 'Curitiba', 22, 3000);

-- Escreva um SELECT que retorne todos os dados dos clientes que moram em São Paulo.
SELECT * 
FROM clientes
WHERE cidade = 'São Paulo';


-- Escreva um SELECT que retorne os id, nome e saldo dos clientes com saldo maior que 500.
SELECT id, nome, saldo 
FROM clientes
WHERE saldo > 500;


-- Clientes com idade menor ou igual a 30. 
-- Escreva um SELECT para retornar nome e idade dos clientes com idade ≤ 30.
SELECT nome, idade 
FROM clientes
WHERE idade <= 30;


-- Escreva um SELECT para retornar todos os clientes que não são do Rio de Janeiro.
SELECT * 
FROM clientes
WHERE cidade != 'Rio de Janeiro';


-- Escreva um SELECT para mostrar nome e idade dos clientes com idade entre 25 e 35 anos (inclusive).
SELECT nome, idade 
FROM clientes
WHERE idade BETWEEN 25 AND 35;


-- Escreva um SELECT que traga nome, idade e saldo para clientes com saldo < 500 OU idade > 30.
SELECT nome, idade, saldo 
FROM clientes
WHERE saldo < 500 OR idade > 30;


-- Escreva um SELECT que mostre nome e cidade para clientes de Curitiba ou Belo Horizonte.
SELECT nome, cidade 
FROM clientes
WHERE cidade = 'Curitiba' OR cidade = 'Belo Horizonte';


-- Escreva um SELECT para listar todos os clientes que não têm saldo igual a 1000.
SELECT * 
FROM clientes
WHERE saldo != 1000;
