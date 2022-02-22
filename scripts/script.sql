CREATE DATABASE contatos;

\c contatos;

CREATE TYPE Pessoa AS (
	nome VARCHAR(30),
	sobrenome VARCHAR(30),
	email VARCHAR(50)
);

CREATE TABLE Pessoas of Pessoa;

CREATE TABLE Alunos (
	matricula INT PRIMARY KEY
) INHERITS (Pessoas);

-- Segunda Forma

CREATE TYPE Pessoa AS (
	nome VARCHAR(30),
	sobrenome VARCHAR(30),
	email VARCHAR(50)
);

CREATE TYPE Aluno as (
  pessoa Pessoa,
  matricula int
);

CREATE TABLE Alunos of Aluno (PRIMARY KEY(matricula));

DROP TABLE Alunos;

SELECT * FROM Pessoas;



SELECT * FROM Alunos;

