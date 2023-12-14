-- Criar o usuário com permissões limitadas
CREATE USER limited_user WITH PASSWORD 'senha_limitada';
-- Conceder apenas permissões específicas para o usuário com permissões limitadas
(exemplo: SELECT em uma tabela específica)
GRANT SELECT ON Livro TO limited_user;