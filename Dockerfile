FROM    node:stretch-slim
RUN     mkdir /app
WORKDIR /app
COPY    . .
RUN     npm install

FROM    nginx
RUN     mkdir -p /var/www/html
COPY    . /var/www/html
COPY    todo-docker.conf /etc/nginx/conf.d/default.conf
