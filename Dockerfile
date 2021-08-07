FROM    node:8apline
RUN     apt update -y
COPY    . .
RUN     npm install
