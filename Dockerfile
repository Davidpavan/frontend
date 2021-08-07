FROM    node:stretch-slim
RUN     mkdir /app
COPY    . .
RUN     npm install

