# Imersão DevOps - Alura Google Cloud

Este projeto é uma API desenvolvida com FastAPI para gerenciar alunos, cursos e matrículas em uma instituição de ensino.

## Pré-requisitos

- [Python 3.10 ou superior instalado](https://www.python.org/downloads/)
- [Git](https://git-scm.com/downloads)
- [Docker](https://www.docker.com/get-started/)

## Passos para subir o projeto

1. **Faça o download do repositório:**
   [Clique aqui para realizar o download](https://github.com/guilhermeonrails/imersao-devops/archive/refs/heads/main.zip)

2. **Crie um ambiente virtual:**
   ```sh
   python3 -m venv ./venv
   ```

3. **Ative o ambiente virtual:**
   - No Linux/Mac:
     ```sh
     source venv/bin/activate
     ```
   - No Windows:
     ```sh
     venv\Scripts\activate
     ```

4. **Instale as dependências:**
   ```sh
   pip install -r requirements.txt
   ```

5. **Execute a aplicação:**
   ```sh
   uvicorn app:app --reload
   ```

6. **Acesse a documentação interativa:**

   Abra o navegador e acesse:  
   [http://127.0.0.1:8000/docs](http://127.0.0.1:8000/docs)

   Aqui você pode testar todos os endpoints da API de forma interativa.

---

## Estrutura do Projeto

- `app.py`: Arquivo principal da aplicação FastAPI.
- `models.py`: Modelos do banco de dados (SQLAlchemy).
- `schemas.py`: Schemas de validação (Pydantic).
- `database.py`: Configuração do banco de dados SQLite.
- `routers/`: Diretório com os arquivos de rotas (alunos, cursos, matrículas).
- `requirements.txt`: Lista de dependências do projeto.

---

- O banco de dados SQLite será criado automaticamente como `escola.db` na primeira execução.
- Para reiniciar o banco, basta apagar o arquivo `escola.db` (isso apagará todos os dados).

---

## Informações sobre o docker! (Criação do Docker - aula 01)

1. criar o arquivo do docker ignore e docker file
2. o docker file possui uma imagem nomeada api
3. gemini cria um docker para app.py
4. docker build -t api .
5. dockes images
6. docker run -p 8000:8000 api (comando para subirmos o projeto)
7. http://localhost:8000/docs (acesso ao docker da api) 
8. ao invés de exercutarmos todas as 6 etapas para subirmos o projeto, 
nós automatizamos através do docker com apenas 1 comando.

(aula 02)

1. CI (Integração Contínua) = Automatizar o processo.
2. Docker compose simplifica a execução do ambiente de desenvolvimento
3. O Docker é uma plataforma que permite empacotar aplicações e dependências em containers,
que são mini máquinas virtuais leves que garantem que minha aplicação vai rodar igual em qualquer ambiente.
4. No docker compose nós vamos ter vários containers pra cada parte da minha API.
5. Uma imagem Docker vai conter um SO básico, bibliotecas, dependências, código e o comando pra rodar,
ela é usada para criar containers.
6. Endpoints são URLs específicas para cada função da minha API

---   