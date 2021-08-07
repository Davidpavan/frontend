FROM    node:stretch-slim
COPY    . /var/www/html
RUN     npm install

