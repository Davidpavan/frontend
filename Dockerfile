FROM    bitnami/node:16.6.1-debian-10-r4
COPY    . /app
RUN     npm install
