# Use a imagem oficial do Python como base
FROM python:3.9

# Defina o diretório de trabalho dentro do contêiner  /home/wshir/NEXTJS/MFinances/fastapi-myfinances
WORKDIR /usr/src/app

# Copie o arquivo requirements.txt para o diretório de trabalho
COPY requirements.txt ./

# Instale as dependências do projeto usando o pip
RUN pip install --no-cache-dir -r requirements.txt

# Copie todo o código-fonte do FastAPI para o contêiner
COPY . .

# Execute o servidor FastAPI
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
