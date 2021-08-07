FROM    alpine3.14
RUN     apt update -y
COPY    . .
RUN     npm install
