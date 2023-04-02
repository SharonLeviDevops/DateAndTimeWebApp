FROM python:3

COPY . /app
WORKDIR /app

EXPOSE 8082

CMD ["python", "app.py"]
