FROM node:lts-alpine3.15
WORKDIR /app
COPY ./src/package*.json ./
RUN npm i
COPY ./src .
EXPOSE 8080
CMD ["node", "server.js"]