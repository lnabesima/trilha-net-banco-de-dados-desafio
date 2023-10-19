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

--6
/* the BETWEEN operator is inclusive, so I needed to change the values
to achieve the expected result */
USE Filmes
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE duracao BETWEEN 101 AND 149
ORDER BY duracao ASC;

-- 7
/* The exercise asked to order the following query by duration of the
   movies released but the column "Duracao" doesn't get selected
   anywhere in the query. So I ordered by "Quantidade" instead. */
USE Filmes
SELECT Ano, COUNT(*) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC;

-- 8
USE Filmes
SELECT *
FROM Atores
WHERE Genero = 'M';

-- 9
USE Filmes
SELECT *
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome ASC;

-- 10
USE Filmes
SELECT F.Nome, G.Genero
FROM Filmes F
INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme
INNER JOIN Generos G ON G.Id = FG.IdGenero;

-- 11
USE Filmes
SELECT F.Nome, G.Genero
FROM Filmes F
INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme
INNER JOIN Generos G ON G.Id = FG.IdGenero
WHERE G.Genero = N'Mistério';

-- 12
USE Filmes
SELECT F.Nome, A.PrimeiroNome, A.UltimoNome, EF.Papel
FROM Filmes F
INNER JOIN dbo.ElencoFilme EF on F.Id = EF.IdFilme
INNER JOIN dbo.Atores A on A.Id = EF.IdAtor;