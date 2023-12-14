INSERT INTO Livro (Titulo, Autor, ISBN, Editora, Edicao, Categoria)
VALUES
('O Senhor dos Anéis', 'J.R.R. Tolkien', '9788578277109', 'HarperCollins', 1, 'Fantasia'),
('1984', 'George Orwell', '9780451524935', 'Companhia das Letras', 1, 'Ficção Científica'),
('Percy Jackson e o Ladrão de Raios', 'Rick Riordan', '9788598078950', 'Intrínseca', 1,
'Fantasia');
INSERT INTO Exemplar (ID_Livro, Status, Localizacao)
VALUES
(1, 'Disponível', 'Prateleira A'),
(1, 'Disponível', 'Prateleira B'),
(2, 'Disponível', 'Prateleira C');
INSERT INTO Usuario (Nome, Tipo, Num_Identificacao)
VALUES
('João Silva', 'Estudante', '12345678901'),
('Maria Souza', 'Professor', '98765432109'),
('Carlos Ferreira', 'Funcionário', '24681012141');
INSERT INTO Emprestimo (ID_Usuario, ID_Exemplar, Data_Emprestimo,
Data_Devolucao, Status_Devolucao)
VALUES
(1, 1, '2023-12-01', '2023-12-15', 'Pendente'),
(2, 2, '2023-11-20', '2023-12-10', 'Devolvido'),
(3, 3, '2023-12-05', '2023-12-20', 'Pendente');