--1 - Buscar o nome e ano dos filmes

SELECT Nome, Ano FROM Filmes

--2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano

SELECT Nome, Ano, Duracao FROM Filmes ORDER BY Ano

--3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração

SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De volta para o Futuro'

--4 - Buscar os filmes lançados em 1997

SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = 1997

--5 - Buscar os filmes lançados APÓS o ano 2000

SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano > 2000

--6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente

SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao

--7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente ???

SELECT Ano, COUNT(*) AS Quantidade FROM Filmes GROUP BY Ano ORDER BY MAX(Duracao) DESC

--8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome

SELECT Id, PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'm'

--9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome

SELECT Id, PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'f' ORDER BY PrimeiroNome

--10 - Buscar o nome do filme e o gênero

SELECT Nome, Genero FROM Filmes
INNER JOIN FilmesGenero ON Filmes.id = FilmesGenero.idFilme
INNER JOIN Generos ON Generos.id = FilmesGenero.idGenero

--11 - Buscar o nome do filme e o gênero do tipo "Mistério"

SELECT Nome, Genero FROM Filmes 
INNER JOIN FilmesGenero ON Filmes.id = FilmesGenero.idFilme
INNER JOIN Generos ON FilmesGenero.idGenero = Generos.id WHERE Generos.genero = 'mistério'

--12 -  Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel

SELECT Nome, PrimeiroNome, UltimoNome FROM Filmes
INNER JOIN ElencoFilme ON Filmes.id = ElencoFilme.IdFilme
INNER JOIN Atores ON ElencoFilme.IdAtor = Atores.id