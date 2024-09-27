# Usa a imagem base do Node.js para compilar o SCSS
FROM node:16 as build

# Define o diretório de trabalho no contêiner
WORKDIR /app

# Copia os arquivos do projeto para o contêiner
COPY . .

# Instala o Sass para compilar SCSS
RUN npm install -g sass

# Compila o SCSS em CSS
RUN sass scss:css

# Usa a imagem base do Nginx para servir arquivos estáticos
FROM nginx:alpine

# Copia o arquivo de configuração do Nginx
COPY nginx.conf /etc/ng
