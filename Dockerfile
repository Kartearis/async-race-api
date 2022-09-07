FROM alpine

RUN apk update
RUN apk add npm

WORKDIR /usr/app
COPY . .

RUN npm install
EXPOSE 3000

CMD ["npm", "start"]
