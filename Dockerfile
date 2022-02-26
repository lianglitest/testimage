FROM node:16-alpine3.12 as build

WORKDIR /usr/src/app

COPY package*.json ./
COPY index.js ./

RUN npm install

FROM gcr.io/distroless/nodejs
COPY --from=build /usr/src/app /
EXPOSE 3000
CMD ["index.js"]