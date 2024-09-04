SELECT Nome, Ano FROM Filmes;

SELECT Nome, Ano, Duracao FROM Filmes ORDER BY Ano ASC;

SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro';

SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano=1997;

SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano > 2000;

SELECT Nome, Ano, Duracao FROM Filmes WHERE duracao > 100 AND duracao < 150 ORDER BY duracao ASC;

SELECT Ano, Count(nome) AS Quantidade FROM Filmes GROUP BY ano ORDER BY Quantidade DESC;

SELECT * from Atores WHERE genero = 'M';

SELECT * from Atores WHERE genero = 'F' ORDER BY PrimeiroNome;

SELECT f.Nome, g.Genero FROM FilmesGenero fg
INNER JOIN Filmes f ON (f.Id = fg.IdFilme)
INNER JOIN Generos g ON (g.Id = fg.IdGenero);

SELECT f.Nome, g.Genero FROM FilmesGenero fg
INNER JOIN Filmes f ON (f.Id = fg.IdFilme)
INNER JOIN Generos g ON (g.Id = fg.IdGenero)
WHERE g.Genero = 'Mistério';

SELECT f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel FROM ElencoFilme ef
INNER JOIN Filmes f ON (f.Id = ef.IdFilme)
INNER JOIN Atores a ON (a.Id = ef.IdAtor);


