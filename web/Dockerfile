FROM node:current-alpine

WORKDIR /usr/src/web

COPY package*.json yarn.lock /usr/src/web

RUN yarn install
RUN yarn build

COPY . .

CMD [ "yarn", "dev", "--host", "0.0.0.0"]