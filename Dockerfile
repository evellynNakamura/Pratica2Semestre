# Usar uma imagem base de NGINX para servir conteúdo estático
FROM nginx:alpine

# Copiar os arquivos do projeto para o diretório padrão do NGINX
COPY . /usr/share/nginx/html

# Expor a porta 80
EXPOSE 80

# Comando para iniciar o NGINX
CMD ["nginx", "-g", "daemon off;"]
