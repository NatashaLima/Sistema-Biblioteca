-- Esta função recebe uma categoria como parâmetro e retorna a lista de livros disponíveis
nessa categoria.
CREATE OR REPLACE FUNCTION LivrosDisponiveisPorCategoria(
IN categoria_livro VARCHAR
)
RETURNS TABLE (ID_Livro INT, Titulo VARCHAR, Autor VARCHAR, Editora
VARCHAR) AS $$
BEGIN
RETURN QUERY
SELECT Livro.ID_Livro, Livro.Titulo, Livro.Autor, Livro.Editora
FROM Livro
INNER JOIN Exemplar ON Livro.ID_Livro = Exemplar.ID_Livro
WHERE Livro.Categoria = categoria_livro AND Exemplar.Status = 'Disponível';
END;
$$ LANGUAGE plpgsql;
