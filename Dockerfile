FROM python:3.8-slim-buster

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

ENV FLASK_APP=core/server.py

EXPOSE 7755

ENTRYPOINT ["bash", "run.sh"]
