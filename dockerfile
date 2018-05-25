FROM node:10

RUN mkdir -p /build
WORKDIR /build

COPY . .

RUN npm install
RUN npm run build

CMD [ "npm", "start" ]