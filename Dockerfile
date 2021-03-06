FROM devopslabs/bootstrap

RUN apk add --update nginx && rm -rf /var/cache/apk/*

COPY nginx/nginx.conf /etc/nginx/nginx.conf
COPY nginx/default.conf /etc/nginx/conf.d/default.conf
COPY website /usr/share/nginx/html     

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]