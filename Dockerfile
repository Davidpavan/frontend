FROM    node:8-alpine as BUILD
RUN     mkdir /app
WORKDIR /app
COPY    . /app
RUN     npm install
RUN     npm run build

FROM    nginx
RUN     mkdir -p /var/www/html/frontend
COPY --from=BUILD  dist /var/www/html
COPY    todo-docker.conf /etc/nginx/conf.d/default.conf
