FROM python:3.8-alpine

ENV PYTHONUNBUFFERED 1

COPY . /cosmosdb-with-fastapi
WORKDIR /cosmosdb-with-fastapi

RUN pip install --upgrade pip
#RUN apt-get update
RUN apt-get -y install build-essential
#RUN pip install -r requirements.txt .
RUN pip install fastapi
RUN pip install fastapi uvicorn
RUN pip install python-dotenv
RUN pip install aiohttp
RUN pip install azure-cosmos

EXPOSE 8000

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
