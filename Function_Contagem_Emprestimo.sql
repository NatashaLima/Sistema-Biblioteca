-- Esta função recebe o ID de um usuário e retorna o número de empréstimos que ele
realizou.
CREATE OR REPLACE FUNCTION ContarEmprestimosPorUsuario(
IN usuario_id INT
)
RETURNS INT AS $$
DECLARE
total_emprestimos INT;
BEGIN
SELECT COUNT(*)
INTO total_emprestimos
FROM Emprestimo
WHERE ID_Usuario = usuario_id;
RETURN total_emprestimos;
END;
$$ LANGUAGE plpgsql;
