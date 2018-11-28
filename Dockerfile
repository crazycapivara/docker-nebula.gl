FROM node:8.13.0-alpine

LABEL maintainer="Stefan Kuethe <crazycapivara@gmail.com>"

RUN apk update \
	&& apk upgrade \
	&& apk add git

RUN git clone https://github.com/uber/nebula.gl.git

WORKDIR /nebula.gl

RUN npm install \
	&& npm audit fix

WORKDIR /nebula.gl/examples/deck

RUN npm install

RUN sed -i s/\"start\".*/'"start": "webpack-dev-server --progress --hot --port 8080 --host 0.0.0.0",'/g package.json

EXPOSE 8080

CMD ["yarn", "start"]

