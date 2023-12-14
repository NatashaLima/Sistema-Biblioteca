SELECT Livro.Titulo, Usuario.Nome AS Nome_Usuario, Emprestimo.Data_Emprestimo,
Emprestimo.Data_Devolucao
FROM Livro
INNER JOIN Exemplar ON Livro.ID_Livro = Exemplar.ID_Livro
INNER JOIN Emprestimo ON Exemplar.ID_Exemplar = Emprestimo.ID_Exemplar
INNER JOIN Usuario ON Emprestimo.ID_Usuario = Usuario.ID_Usuario;
