FROM    bitnami/node:16.6.1-debian-10-r4
WORKDIR /app
COPY    . /app
RUN     npm install
