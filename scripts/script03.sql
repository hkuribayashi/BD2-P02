CREATE TABLE pedidos (
	id serial NOT NULL PRIMARY KEY,
	info json NOT NULL
);

INSERT INTO pedidos (info)
VALUES('{ "cliente": "Joao Silva", "itens": {"produto": "Cerveja","qtd": 6}}');

INSERT INTO pedidos (info)
VALUES('{ "cliente": "Maria Costa", "itens": {"produto": "Carvão","qtd": 24}}'),
      ('{ "cliente": "José Souza", "itens": {"produto": "Carne","qtd": 1}}'),
      ('{ "cliente": "Ana Pereira", "itens": {"produto": "Frango","qtd": 2}}');

SELECT info FROM pedidos;

SELECT info->'cliente' FROM pedidos;

SELECT info ->> 'cliente' AS cliente FROM pedidos;

SELECT info ->> 'itens' AS cliente FROM pedidos;

SELECT info -> 'itens' ->> 'produto' as produto FROM pedidos;

