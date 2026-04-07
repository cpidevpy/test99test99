FROM python:3.9-slim

RUN pip install cryptography

RUN git clone https://github.com/alexbers/mtprotoproxy.git /app
WORKDIR /app

EXPOSE 8888

CMD python3 mtprotoproxy.py
