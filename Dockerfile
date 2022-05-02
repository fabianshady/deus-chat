FROM node:16.14.2

WORKDIR /usr/src/app/my-app

COPY package*.json ./

RUN npm install

RUN mkdir /usr/src/app/my-app/node_modules/.cache && chmod -R 777 /usr/src/app/my-app/node_modules/.cache

EXPOSE 3000

CMD ["npm", "start"]
