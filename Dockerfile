FROM    ubuntu
RUN     apt update -y && apt install npm -y
RUN     mkdir /app
WORKDIR /app
COPY    . /app
RUN     npm install
