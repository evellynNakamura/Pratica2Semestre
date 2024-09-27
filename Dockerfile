# Usar Nginx para servir conteúdo estático
FROM nginx:alpine

# Remover arquivos padrão do NGINX
RUN rm -rf /usr/share/nginx/html/*

# Copiar os arquivos do projeto para o diretório padrão do NGINX
COPY . /usr/share/nginx/html

# Expor a porta 80
EXPOSE 80

# Comando para manter o Nginx rodando
CMD ["nginx", "-g", "daemon off;"]
