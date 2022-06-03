FROM node:18-alpine3.14
WORKDIR /app

COPY package.json .
RUN npm install --legacy-peer-deps
# RUN npm run build
COPY . .
CMD [ "npm", "run", "start:dev" ]
