# Usar imagem oficial do Node.js
FROM node:18-alpine

# Definir diretório de trabalho
WORKDIR /app

# Copiar package.json e instalar dependências
COPY node-app/package*.json ./
RUN npm install --production

# Copiar restante do código
COPY node-app/ .

# Criar pasta de logs
RUN mkdir -p /app/logs

# Expor porta
EXPOSE 3838

# Comando para iniciar
CMD ["node", "index.js"]
