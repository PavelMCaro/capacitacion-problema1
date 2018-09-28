FROM node:10.10.0-slim

WORKDIR /app

COPY ./preguntas.md ./

RUN ls

RUN cat preguntas.md
