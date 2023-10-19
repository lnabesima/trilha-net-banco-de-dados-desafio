-- 1
USE Filmes
SELECT Nome, Ano
FROM Filmes;

-- 2
USE Filmes
SELECT Nome, Ano, Duracao
FROM Filmes
ORDER BY Ano ASC;

-- 3
USE Filmes
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro';

-- 4
USE Filmes
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Ano = 1997;

-- 5
USE Filmes
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Ano > 2000;