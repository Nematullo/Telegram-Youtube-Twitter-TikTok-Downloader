# Используем официальный образ Python
FROM python:3.11-slim

# Устанавливаем зависимости системы
RUN apt-get update && apt-get install -y \
    ffmpeg \
    && apt-get clean

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем файлы проекта
COPY . .

# Устанавливаем зависимости Python
RUN pip install --no-cache-dir -r requirements.txt

# Указываем, что при запуске будет использоваться этот скрипт
CMD ["python", "main.py"]
