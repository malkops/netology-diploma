FROM nginxinc/nginx-unprivileged:1.25

COPY app/src/ /app
COPY app/nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
