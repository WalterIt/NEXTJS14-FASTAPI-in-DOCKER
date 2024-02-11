# Use a imagem base do Python
FROM python:3.9

# Configuração do diretório de trabalho
WORKDIR /usr/src/app

# Copie o arquivo requirements.txt para o contêiner
COPY requirements.txt .

# Instale as dependências
RUN pip install --no-cache-dir -r requirements.txt

# Restante das instruções do Dockerfile...
