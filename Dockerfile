#Базовый образ с Python 3.9
#FROM python:3.9

#Рабочая директория внутри контейнера
#WORKDIR /app

#Копируем зависимости
#COPY requirements.txt .

#RUN python -m pip install --upgrade pip

#Устанавливаем зависимости
#RUN pip install --no-cache-dir -r requirements.txt --disable-pip-version-check

#Копируем приложение внутрь контейнера
#COPY app.py .

#Запуск Flask-приложения
#CMD ["python", "app.py"]

FROM python:3.9

# Создаём директорию приложения
WORKDIR /app

# Копируем зависимости
COPY requirements.txt .

# Устанавливаем venv и создаём окружение внутри /app/venv
RUN python -m venv /app/venv \
    && /app/venv/bin/pip install --upgrade pip \
    && /app/venv/bin/pip install -r requirements.txt

# Копируем исходники
COPY app.py .

# Используем абсолютный путь к Python из venv
CMD ["/app/venv/bin/python", "app.py"]
