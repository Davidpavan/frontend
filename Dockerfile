FROM    alpine3.14
RUN     mkdir /app
WORKDIR /app
COPY    . .
RUN     npm install
