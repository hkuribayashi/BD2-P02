CREATE TYPE Pessoa AS (
  nome VARCHAR(50),
  sobrenome VARCHAR(50),
  email VARCHAR(50)
);

CREATE TABLE Pessoas of Pessoa;

CREATE TABLE Alunos (
 matricula INT PRIMARY KEY
) INHERITS (Pessoas);

SELECT * FROM public."alunos";

SELECT * FROM public."pessoas";

INSERT INTO public."pessoas"
VALUES ('Hugo', 'Kuribayashi', 'hugo@unifesspa.edu.br');

INSERT INTO public."alunos"
VALUES ('Joao', 'Silva', 'joao.silva@unifesspa.edu.br', 112);