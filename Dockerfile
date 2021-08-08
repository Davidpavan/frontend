FROM    node:8-alpine as BUILD
RUN     mkdir /frontend
WORKDIR /frontend
COPY    . /frontend
RUN     npm install
RUN     npm run build

FROM    nginx
RUN     mkdir -p /var/www/html/frontend
COPY --from=BUILD  /frontend /var/www/html/frontend
COPY    todo-docker.conf /etc/nginx/conf.d/default.conf
