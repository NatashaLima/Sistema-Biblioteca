-- Esta stored procedure lista todos os empréstimos pendentes para um determinado usuário
com base no ID do usuário fornecido.
CREATE OR REPLACE PROCEDURE ListarEmprestimosPendentesPorUsuario(
IN usuario_id INT
)
LANGUAGE SQL
AS $$
SELECT Emprestimo.ID_Emprestimo, Livro.Titulo, Emprestimo.Data_Emprestimo,
Emprestimo.Data_Devolucao
FROM Emprestimo
INNER JOIN Exemplar ON Emprestimo.ID_Exemplar = Exemplar.ID_Exemplar
INNER JOIN Livro ON Exemplar.ID_Livro = Livro.ID_Livro
WHERE Emprestimo.Status_Devolucao = 'Pendente' AND Emprestimo.ID_Usuario =
usuario_id;
$$;