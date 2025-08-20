# Usar imagem oficial do Node.js
FROM node:18-alpine

# Definir diretório de trabalho
WORKDIR /app

# Copiar package.json e instalar dependências
COPY package*.json ./
RUN npm install 

# Copiar restante do código
COPY  .

# Criar pasta de logs
RUN mkdir -p /app/logs

# Expor porta
EXPOSE 8080

# Comando para iniciar
CMD ["node", "index.js"]
