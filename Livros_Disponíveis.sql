SELECT Livro.Titulo, Livro.Editora, Exemplar.Localizacao
FROM Livro
INNER JOIN Exemplar ON Livro.ID_Livro = Exemplar.ID_Livro
WHERE Exemplar.Status = 'Disponível';