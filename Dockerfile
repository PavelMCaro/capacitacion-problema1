FROM nginx:alpine

WORKDIR /app

COPY ./preguntas.md ./
COPY ./intro.md ./

