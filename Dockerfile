FROM node:6.9.2
EXPOSE 8080
COPY helloServer.js .

CMD node helloServer.js
