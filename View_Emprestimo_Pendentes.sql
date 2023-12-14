-- Esta view retorna os empréstimos pendentes de cada usuário.
CREATE OR REPLACE VIEW EmprestimosPendentesPorUsuarioView AS
SELECT Usuario.ID_Usuario, Usuario.Nome AS Nome_Usuario,
COUNT(Emprestimo.ID_Emprestimo) AS Quantidade_Pendentes
FROM Usuario
LEFT JOIN Emprestimo ON Usuario.ID_Usuario = Emprestimo.ID_Usuario
WHERE Emprestimo.Status_Devolucao = 'Pendente'
GROUP BY Usuario.ID_Usuario, Usuario.Nome;