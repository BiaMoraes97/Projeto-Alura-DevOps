# 1. Usar uma imagem base oficial e leve do Python
FROM python:3.13.4-alpine3.22

# 2. Definir o diretório de trabalho dentro do container
WORKDIR /app

# 3. Copiar o arquivo de dependências
COPY requirements.txt .

# 4. Instalar as dependências
# Usar --no-cache-dir para manter a imagem menor
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

# 5. Copiar o código da aplicação para o diretório de trabalho
COPY . .

# 6. Expor a porta em que a aplicação será executada
EXPOSE 8000

# 7. Comando para iniciar a aplicação com Uvicorn
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]
