FROM node:8.9.4-alpine

# install angular-cli as node user
RUN chown -R node:node /usr/local/lib/node_modules \
  && chown -R node:node /usr/local/bin

RUN apk update
RUN apk add yarn
RUN yarn global add @angular/cli --prefix /usr/local
USER node
WORKDIR /home/node
