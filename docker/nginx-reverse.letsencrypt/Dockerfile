FROM nginx:1.14.1-alpine

COPY docker/nginx-reverse.letsencrypt/compile-nginx.sh ./compile-nginx.sh

COPY nginx/default.letsencrypt.conf.template /default.conf.template

RUN chmod +x ./compile-nginx.sh

# ## Copy auth keys store
# COPY .htpasswd /etc/apache2/.htpasswd

## Remove default nginx website
RUN rm -rf /usr/share/nginx/html/*

EXPOSE 80

CMD ["./compile-nginx.sh", "&&" "nginx", "-g", "daemon off;"]
