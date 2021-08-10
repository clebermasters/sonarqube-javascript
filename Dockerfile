FROM node:16-stretch

RUN npm install -g @angular/cli

WORKDIR /tmp/angular