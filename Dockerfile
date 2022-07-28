FROM node:alpine

WORKDIR /app
COPY package.json /app
RUN npm install 
COPY . /app

ENV PORT=8000

EXPOSE ${PORT}

CMD [ "npm", "start" ]