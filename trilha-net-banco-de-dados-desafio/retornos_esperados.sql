USE Filmes
GO

/*1 - Buscar o nome e ano dos filmes*/
SELECT Nome, Ano
FROM Filmes
GO

/*2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano*/
SELECT Nome, Ano
FROM Filmes
ORDER BY Ano ASC, Nome ASC
GO

/*3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração*/
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Nome LIKE '%De Volta para o Futuro%'
GO

/*4 - Buscar os filmes lançados em 1997*/
SELECT *
FROM Filmes
WHERE Ano = 1997;
GO

/*5 - Buscar os filmes lançados APÓS o ano 2000*/
SELECT *
FROM Filmes
WHERE Ano > 2000;
GO

/*6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente*/
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC;
GO

/*7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente*/
SELECT ano, COUNT(*) AS quantidade FROM filmes GROUP BY ano ORDER BY quantidade DESC
GO

/*8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome*/
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'M';
GO

/*9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome*/
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome ASC;
GO

/*10 - Buscar o nome do filme e o gênero*/
SELECT F.Nome AS NomeFilme, G.Genero AS Genero
FROM Filmes F
JOIN FilmesGenero FG ON F.Id = FG.IdFilme
JOIN Generos G ON FG.IdGenero = G.Id;
GO

/*11 - Buscar o nome do filme e o gênero do tipo "Mistério"*/
SELECT F.Nome AS NomeFilme, G.Genero
FROM Filmes F
JOIN FilmesGenero FG ON F.Id = FG.IdFilme
JOIN Generos G ON FG.IdGenero = G.Id
WHERE G.Genero = 'Mistério';
GO

/*12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel*/
SELECT 
    F.Nome,
    A.PrimeiroNome,
    A.UltimoNome,
    EF.Papel
FROM Filmes F
JOIN ElencoFilme EF ON F.Id = EF.IdFilme
JOIN Atores A ON EF.IdAtor = A.Id
GO