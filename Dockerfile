FROM python:3.9-alpine

ENV PYTHONUNBUFFERED 1

COPY . /cosmosdb-with-fastapi
WORKDIR /cosmosdb-with-fastapi

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

EXPOSE 8000

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
