CREATE TABLE Livro (
ID_Livro SERIAL PRIMARY KEY,
Titulo VARCHAR(100) NOT NULL,
Autor VARCHAR(100),
ISBN VARCHAR(13),
Editora VARCHAR(50),
Edicao INT,
Categoria VARCHAR(50)
);
CREATE TABLE Exemplar (
ID_Exemplar SERIAL PRIMARY KEY,
ID_Livro INT REFERENCES Livro(ID_Livro),
Status VARCHAR(20),
Localizacao VARCHAR(50)
);
CREATE TABLE Usuario (
ID_Usuario SERIAL PRIMARY KEY,
Nome VARCHAR(100) NOT NULL,
Tipo VARCHAR(20),
Num_Identificacao VARCHAR(20)
);
CREATE TABLE Emprestimo (
ID_Emprestimo SERIAL PRIMARY KEY,
ID_Usuario INT REFERENCES Usuario(ID_Usuario),
ID_Exemplar INT REFERENCES Exemplar(ID_Exemplar),
Data_Emprestimo DATE,
Data_Devolucao DATE,
Status_Devolucao VARCHAR(20)
);