FROM node:alpine

WORKDIR /api

COPY . .

RUN npm ci

CMD [ "npm", "start" ]