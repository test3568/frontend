FROM nginx:1.27.3

RUN rm -rf /usr/share/nginx/html && mkdir /usr/share/nginx/html

COPY ./nginx/nginx.conf /etc/nginx
COPY ./dist /usr/share/nginx/html

ENTRYPOINT ["nginx", "-g", "daemon off;"]
