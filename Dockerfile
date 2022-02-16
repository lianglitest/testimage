FROM node:16-alpine3.12

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install

COPY index.js ./

CMD ["index.js"]