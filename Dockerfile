FROM node:18-alpine

WORKDIR /app

COPY package.json ./

COPY package-lock.json ./

RUN npm install

COPY ./ ./

EXPOSE 3000
# required for docker desktop port mapping

# RUN npm test --forceExit

# CMD ["npm", "start"]
CMD npm start