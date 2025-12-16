FROM python:3.10-slim

WORKDIR /app

COPY requirements.txt .

RUN apt-get update && apt-get install -y \
    pkg-config \
    libdbus-1-dev \
    libglib2.0-dev \
    build-essential \
    python3-dev \
    dbus-x11 \
    libcairo2-dev \
    libgirepository1.0-dev \
 && pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
