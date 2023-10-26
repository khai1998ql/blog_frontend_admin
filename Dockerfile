FROM node:16 as build-stage

WORKDIR /app

COPY package*.json ./
COPY . /app

RUN npm install

EXPOSE 3000

CMD ["npm", "run", "dev"]