--1
SELECT Nome, Ano FROM Filmes

--2
SELECT Nome, Ano, Duracao FROM Filmes
ORDER BY Ano

--3
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

--4
SELECT Nome, Ano, Duracao FROM Filmes
WHERE ANO = '1997'

--5
SELECT Nome, Ano, Duracao FROM Filmes
WHERE ANO > 2000

--6
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC

--7
SELECT ANO, COUNT(Ano) Quantidade
FROM Filmes GROUP BY ANO
ORDER BY Quantidade DESC

--8
SELECT PrimeiroNome, UltimoNome, Genero FROM Atores
WHERE GENERO = 'M'

--9
SELECT PrimeiroNome, UltimoNome, Genero FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

--10
SELECT Nome, Genero
FROM FILMES INNER JOIN FilmesGenero ON
Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos On
FilmesGenero.IdGenero = Generos.Id

--11
SELECT Nome, Genero
FROM FILMES INNER JOIN FilmesGenero ON
Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON
FilmesGenero.IdGenero = Generos.Id
WHERE Genero = 'mistério'

--12SELECT Nome, PrimeiroNome, UltimoNome, Papel
FROM ATORES INNER JOIN ElencoFilme ON
Atores.Id = ElencoFilme.IdAtor 
INNER JOIN Filmes ON 
ElencoFilme.IdFilme = Filmes.Id



