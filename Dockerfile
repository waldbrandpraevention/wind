FROM node:alpine

RUN apk add --no-cache openjdk11-jre

WORKDIR /api

COPY . .

RUN npm ci

CMD [ "npm", "start" ]
