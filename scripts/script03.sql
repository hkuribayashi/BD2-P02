CREATE TABLE pedidos (
	id serial NOT NULL PRIMARY KEY,
	info json NOT NULL
);

INSERT INTO pedidos (info)
VALUES('{ "cliente": "Joao Silva", "itens": {"produto": "Cerveja","qtd": 6}}');

INSERT INTO pedidos (info)
VALUES('{ "cliente": "Maria Costa", "itens": {"produto": "Carvão","qtd": 2}}'),
      ('{ "cliente": "José Souza", "itens": {"produto": "Carne","qtd": 5}}'),
      ('{ "cliente": "Ana Pereira", "itens": {"produto": "Frango","qtd": 2}}'),
      ('{ "cliente": "Amanda Alves", "itens": {"produto": "Cerveja","qtd": 8}}');

SELECT * FROM pedidos;

SELECT id, info FROM pedidos;

SELECT info FROM pedidos;

SELECT info->'cliente' FROM pedidos;

SELECT info ->> 'cliente' AS cliente FROM pedidos;

SELECT info -> 'itens' ->> 'produto' as produto
FROM pedidos
ORDER BY produto;

SELECT info ->> 'cliente' AS cliente
FROM pedidos
WHERE info -> 'itens' ->> 'produto' = 'Cerveja';

SELECT
   info ->> 'cliente' AS cliente
FROM pedidos
WHERE info -> 'itens' ->> 'produto' = 'Cerveja' AND
        CAST(info -> 'itens' ->> 'qtd' AS INTEGER) > 6;

SELECT
   SUM (CAST (info -> 'itens' ->> 'qtd' AS INTEGER))
FROM pedidos
WHERE info -> 'itens' ->> 'produto' = 'Cerveja';
