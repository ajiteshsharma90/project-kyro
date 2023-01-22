FROM python:3.9

# 
WORKDIR /cosmosdb-with-fastapi

# 
COPY . .

# 
RUN pip install fastapi
RUN pip install fastapi uvicorn
RUN pip install python-dotenv
RUN pip install aiohttp
RUN pip install azure-cosmos

# 
COPY . .

# 
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]
