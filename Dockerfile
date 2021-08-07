FROM    node
RUN     apt update -y
COPY    . .
RUN     npm install
