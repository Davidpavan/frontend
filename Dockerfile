FROM    node:8-alpine
RUN     mkdir /app
WORKDIR /app
COPY    . /app
RUN     npm install \
        npm run build
