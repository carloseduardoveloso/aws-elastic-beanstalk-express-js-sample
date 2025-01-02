# Use a imagem base do Node.js
FROM node:14-alpine

# Define o diretório de trabalho dentro do contêiner
WORKDIR /usr/src/app

# Copia os arquivos package.json e package-lock.json para o contêiner
COPY package*.json ./

# Instala as dependências da aplicação
RUN npm install

# Copia o restante dos arquivos da aplicação para o contêiner
COPY . .

# Expõe a porta que a aplicação irá usar
EXPOSE 8080

# Comando para iniciar a aplicação
CMD ["node", "app.js"]
