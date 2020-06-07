FROM node:alpine

WORKDIR /app

ADD package.json /app/
RUN npm install --production
ADD index.html /app/

EXPOSE 1947

CMD []
ENTRYPOINT ["npm", "start"]