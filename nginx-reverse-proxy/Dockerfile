
FROM node:24.7 AS build
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .

FROM node:24.7-slim
WORKDIR /app
COPY --from=build /app ./
CMD ["node", "server.js"]
