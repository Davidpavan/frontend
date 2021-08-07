FROM    node:stretch
RUN     mkdir /app
WORKDIR /app
COPY    . .
RUN     npm install

