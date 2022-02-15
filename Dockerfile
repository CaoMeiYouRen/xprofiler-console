FROM alpine:latest

ENV NODE_ENV production

RUN echo "http://mirrors.aliyun.com/alpine/edge/main/" > /etc/apk/repositories \
    && echo "http://mirrors.aliyun.com/alpine/edge/community/" >> /etc/apk/repositories \
    && apk update \
    && apk add --no-cache --update nodejs nodejs-npm \
    && npm config set registry https://registry.npmmirror.com

WORKDIR /home/app

COPY package.json /home/app/

RUN npm install --production

COPY . /home/app

# RUN npm run init-test-db

EXPOSE 7443

CMD ["npm", "start"]