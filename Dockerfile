FROM node:6.2-slim

RUN mkdir -p /opt/app
WORKDIR /opt/app

COPY package.json /opt/app
RUN npm install
COPY ./ /opt/app

CMD npm start
