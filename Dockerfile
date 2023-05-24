# Build command on Apple M1: docker buildx build --platform linux/amd64 --push -t vaimee/website .
FROM nginx:alpine

COPY /media /usr/share/nginx/html/media

COPY /jsap.html /usr/share/nginx/html/jsap.html
COPY /sepa.html /usr/share/nginx/html/sepa.html
COPY /sparql11-se-protocol.html /usr/share/nginx/html/sparql11-se-protocol.html
COPY /sparql11-subscribe.html /usr/share/nginx/html/sparql11-subscribe.html

EXPOSE 80