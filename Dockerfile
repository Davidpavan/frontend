FROM    node:8-alpine
RUN     mkdir /app
WORKDIR /app
COPY    . /app
RUN     npm install
RUN     npm run build
