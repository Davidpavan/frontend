FROM    nginx
RUN     mkdir -p /var/www/html
COPY    . /var/www/html
COPY    todo-docker.conf /etc/nginx/conf.d/default.conf

