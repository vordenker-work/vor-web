FROM nginx:alpine

ENV BACKEND_UPSTREAM=http://host.docker.internal:8000

COPY nginx.conf.template /etc/nginx/templates/default.conf.template
COPY index.html style.css app.js /usr/share/nginx/html/
COPY pages/ /usr/share/nginx/html/pages/

EXPOSE 80
