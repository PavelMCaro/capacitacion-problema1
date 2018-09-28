FROM nginx:alpine

WOKDIR /app

COPY ./preguntas.md ./
COPY ./intro.md ./

