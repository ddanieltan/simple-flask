FROM python:3.12-slim-bookworm

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

CMD ["sh", "-c", "gunicorn --bind 0.0.0.0:${PORT:-5000} app:app"]


