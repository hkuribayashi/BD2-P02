CREATE TYPE Funcionario AS (
	nome VARCHAR(50),
	sobrenome VARCHAR(50),
	email VARCHAR(50)
);

CREATE TYPE Professor AS (
    matricula INT,
	titulacao VARCHAR(50),
	dados_basicos Funcionario
);

CREATE TABLE Professores of Professor (
	PRIMARY KEY(matricula)
);

SELECT * FROM professores;

INSERT INTO professores VALUES (1, 'Mestre', ('Maria', 'Costa', 'maria.costa@acme.com') );
INSERT INTO professores VALUES (2, 'Mestre', ('João', 'Silva', 'joao.silva@acme.com') );
INSERT INTO professores VALUES (3, 'Doutor', ('Pedro', 'Souza', 'pedro.souza@acme.com') );
INSERT INTO professores VALUES (4, 'Doutora', ('Ana', 'Santos', 'ana.santos@acme.com') );

SELECT * FROM public.professores
WHERE (dados_basicos).nome = 'Carla';

SELECT * FROM public.professores
WHERE (dados_basicos).sobrenome = 'Souza';

SELECT * FROM public.professores
WHERE (dados_basicos).sobrenome LIKE 'S%'
ORDER BY (dados_basicos).nome;