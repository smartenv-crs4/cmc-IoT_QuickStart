# this is an ONBUILD image. Build this base image before building your service container's node image based on this one

FROM node:alpine

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ONBUILD ARG NODE_ENV
ONBUILD ENV NODE_ENV $NODE_ENV
ONBUILD COPY package.json /usr/src/app/
ONBUILD RUN npm install --unsafe-perm && npm cache clean --force
ONBUILD COPY . /usr/src/app


# Add dockerize tool -------------------
ONBUILD RUN apk add --no-cache openssl
ONBUILD ENV DOCKERIZE_VERSION v0.6.1
ONBUILD RUN wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && tar -C /usr/local/bin -xzvf dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && rm dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz

CMD [ "npm", "start" ]
