# Use a imagem oficial do Node.js como base
FROM node:20.11.0

# Defina o diretório de trabalho dentro do contêiner
WORKDIR /usr/src/app

# Copie o arquivo package.json para o diretório de trabalho
COPY package.json ./

# Instale as dependências do projeto
RUN npm install

# Copie todo o código-fonte do Next.js para o contêiner
COPY . .

# Execute o servidor Next.js em modo de desenvolvimento
CMD ["npm", "run", "dev"]
