# base image
FROM node:16.15.1-slim
WORKDIR /services/app
COPY package.json package-lock.json ./
RUN npm ci && mkdir /angular && mv ./node_modules ./angular
WORKDIR /angular
RUN npm install -g @angular/cli
COPY . .
RUN npm install
RUN npm run build
CMD ["npm", "start"]
