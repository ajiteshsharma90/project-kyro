FROM python:3.9-alpine

ENV PYTHONUNBUFFERED 1

COPY . /app
WORKDIR /app

RUN pip install --upgrade pip
RUN pip install fastapi

EXPOSE 8000

CMD ["python", "main.py"]
