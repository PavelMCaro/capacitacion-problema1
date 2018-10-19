FROM node:10.10.0-slim
WORKDIR /app
ENTRYPOINT ["/usr/local/bin/npm", "start"]