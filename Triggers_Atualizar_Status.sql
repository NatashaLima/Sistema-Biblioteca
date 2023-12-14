-- Esta trigger atualiza automaticamente o status de um exemplar para 'Emprestado' quando
um novo empréstimo é feito.
CREATE OR REPLACE FUNCTION AtualizarStatusExemplarAposEmprestimo()
RETURNS TRIGGER AS $$
BEGIN
UPDATE Exemplar
SET Status = 'Emprestado'
WHERE Exemplar.ID_Exemplar = NEW.ID_Exemplar;
RETURN NEW;
END;
$$ LANGUAGE plpgsql;
CREATE TRIGGER Exemplar_AposInserirEmprestimo
AFTER INSERT ON Emprestimo
FOR EACH ROW
EXECUTE FUNCTION AtualizarStatusExemplarAposEmprestimo();