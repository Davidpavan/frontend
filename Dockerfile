FROM    ubuntu
RUN     apt update -y && apt install npm -y
COPY    . /var/www/html
RUN     npm install

