FROM nginxinc/nginx-unprivileged:1.25

COPY src/ /app
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
