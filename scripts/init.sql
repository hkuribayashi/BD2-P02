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