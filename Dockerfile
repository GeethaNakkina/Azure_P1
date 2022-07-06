# FROM node:latest

# WORKDIR /src/app

# COPY package.json ./

# RUN npm install

# COPY . .

# EXPOSE 8081
# CMD [ "node", "index.html" ]

#Stage 1
FROM node:latest as node
WORKDIR /src/app
COPY . .
EXPOSE 8081
RUN npm install
RUN npm run
