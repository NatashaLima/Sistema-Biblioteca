-- Esta view retorna os detalhes dos livros disponíveis por categoria.
CREATE OR REPLACE VIEW LivrosDisponiveisPorCategoriaView AS
SELECT Livro.ID_Livro, Livro.Titulo, Livro.Autor, Livro.Editora, Livro.Categoria
FROM Livro
INNER JOIN Exemplar ON Livro.ID_Livro = Exemplar.ID_Livro
WHERE Exemplar.Status = 'Disponível';