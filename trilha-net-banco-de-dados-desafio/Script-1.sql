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
