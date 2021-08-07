FROM    ubuntu
RUN     apt update -y && apt install nginx -y
CMD     ["nginx", "-g", "daemon off;"]
RUN     apt install npm \
        mkdir /var/www/html
COPY    . .
WORKDIR /frontend
RUN     npm install && npm run build

