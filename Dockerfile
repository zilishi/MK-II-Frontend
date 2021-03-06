FROM node:8-slim

RUN echo "deb http://mirrors.aliyun.com/debian wheezy main contrib non-free" > /etc/apt/sources.list && \
    echo "deb-src http://mirrors.aliyun.com/debian wheezy main contrib non-free" >> /etc/apt/sources.list  && \
    echo "deb http://mirrors.aliyun.com/debian wheezy-updates main contrib non-free" >> /etc/apt/sources.list && \
    echo "deb-src http://mirrors.aliyun.com/debian wheezy-updates main contrib non-free" >> /etc/apt/sources.list && \
    echo "deb http://mirrors.aliyun.com/debian-security wheezy/updates main contrib non-free" >> /etc/apt/sources.list && \
    echo "deb-src http://mirrors.aliyun.com/debian-security wheezy/updates main contrib non-free" >> /etc/apt/sources.list && \
    apt-get update && apt-get install -y nginx && \
    npm install -g yarn

WORKDIR /usr/src/app
COPY package*.json ./

RUN yarn config set registry https://registry.npm.taobao.org && \
    yarn install
COPY . .

RUN yarn build
EXPOSE 80

RUN cp -r dist/* /var/www/html \
    && rm -rf /user/src/app
CMD ["nginx","-g","daemon off;"]
