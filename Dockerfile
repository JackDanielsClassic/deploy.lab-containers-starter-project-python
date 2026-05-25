FROM python:3.13-alpine
WORKDIR /app

COPY requirements/backend.in /app/requirements/

RUN pip install -r requirements/backend.in

COPY . /app

CMD ["python", "spaceship/app.py"]