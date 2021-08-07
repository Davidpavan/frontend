FROM    node:8-apline
RUN     apt update -y
COPY    . .
RUN     npm install
