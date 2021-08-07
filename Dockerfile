FROM    node
RUN     mkdir /app
COPY    . /app
RUN     npm install
