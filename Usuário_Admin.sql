-- Criar o usuário administrador
CREATE USER admin_user WITH PASSWORD 'senha_admin';
-- Conceder todos os privilégios para o usuário administrador (é recomendável conceder
apenas os privilégios necessários)
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO admin_user;