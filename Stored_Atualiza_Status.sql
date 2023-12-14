-- Esta stored procedure atualiza o status de um empréstimo com base no ID do empréstimo
e no novo status fornecido.
CREATE OR REPLACE PROCEDURE AtualizarStatusEmprestimo(
IN emprestimo_id INT,
IN novo_status VARCHAR
)
LANGUAGE SQL
AS $$
UPDATE Emprestimo
SET Status_Devolucao = novo_status
WHERE ID_Emprestimo = emprestimo_id;
$$;