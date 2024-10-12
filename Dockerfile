FROM node:20.12.0-alpine3.19

WORKDIR /app

COPY package* .

RUN npm install

COPY . .

EXPOSE 5173

CMD ["npm", "run", "dev", "--", "--host"]
