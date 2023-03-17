FROM node:14.20.0-alpine

RUN apk add --no-cache bash

RUN npm config set cache /home/node/app/.npm-cache --global

RUN npm i -g @nestjs/cli@9.3.0

USER node

WORKDIR /home/node/app