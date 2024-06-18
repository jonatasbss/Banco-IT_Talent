FROM mysql:latest

# Variáveis de ambiente para configuração do MySQL
ENV MYSQL_ROOT_PASSWORD=rootpassword
ENV MYSQL_DATABASE=BANCO_DADOS_IT_TALENT
ENV MYSQL_USER=usuario
ENV MYSQL_PASSWORD=senha

# Copiar o arquivo de inicialização para o diretório de entrada do MySQL
COPY init-db.sh /docker-entrypoint-initdb.d/
COPY scripts/dump.sql /docker-entrypoint-initdb.d/

# Tornar o script executável
RUN chmod +x /docker-entrypoint-initdb.d/init-db.sh

# Expor a porta padrão do MySQL
EXPOSE 3306
