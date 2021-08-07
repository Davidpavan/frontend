FROM    ubuntu
RUN     apt update -y && apt install nginx -y
CMD     ["nginx", "-g", "daemon off;"]
RUN     apt install npm -y
COPY    . /var/www/html
RUN     npm install

