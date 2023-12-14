SELECT Emprestimo.ID_Emprestimo, Livro.Titulo, Usuario.Nome AS Nome_Usuario,
Emprestimo.Data_Emprestimo, Emprestimo.Data_Devolucao
FROM Emprestimo
INNER JOIN Usuario ON Emprestimo.ID_Usuario = Usuario.ID_Usuario
INNER JOIN Exemplar ON Emprestimo.ID_Exemplar = Exemplar.ID_Exemplar
INNER JOIN Livro ON Exemplar.ID_Livro = Livro.ID_Livro
WHERE Emprestimo.Status_Devolucao = 'Pendente';
