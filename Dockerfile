FROM nginx
COPY index.html /usr/share/nginx/html/
COPY default.conf.tmpl /etc/nginx/conf.d/
ENTRYPOINT /bin/bash -c "envsubst < /etc/nginx/conf.d/default.conf.tmpl > /etc/nginx/conf.d/default.conf  && chmod u-w /etc/nginx/conf.d/default.conf  && exec nginx -g 'daemon off;'"
