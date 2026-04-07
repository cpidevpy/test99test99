FROM python:3.9-slim

# Устанавливаем git и другие зависимости
RUN apt-get update && apt-get install -y git && \
    pip install cryptography

# Клонируем MTProto прокси
RUN git clone https://github.com/alexbers/mtprotoproxy.git /app
WORKDIR /app

EXPOSE 8888

CMD python3 mtprotoproxy.py
