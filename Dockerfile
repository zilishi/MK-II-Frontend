FROM node:8-slim
RUN apt-get update  && apt-get install -y yarn && apt-get install -y nginx
WORKDIR /usr/src/app
COPY package*.json ./
RUN yarn install
COPY . .
RUN yarn build
EXPOSE 8081
RUN cp -r dist/* /var/www/html \
    && rm -rf /user/src/app
CMD ["nginx","-g","daemon off;"]
