FROM    ubuntu
RUN     apt update -y
RUN     apt install nodejs -y
RUN     apt install npm -y
RUN     mkdir /app
WORKDIR /app
COPY    . /app
RUN     npm install
