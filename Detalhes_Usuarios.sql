SELECT DISTINCT Usuario.Nome, Usuario.Tipo
FROM Usuario
INNER JOIN Emprestimo ON Usuario.ID_Usuario = Emprestimo.ID_Usuario;