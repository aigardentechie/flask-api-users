FROM python:3.12

WORKDIR /flask-api-users

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 5000

CMD ["python3", "-m", "flask", "--app", "api", "run", "--host=0.0.0.0"]