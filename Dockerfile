# Build command on Apple M1: docker buildx build --platform linux/amd64 --push -t vaimee/website .
FROM nginx:alpine

COPY /media /usr/share/nginx/html/TR/media

COPY /jsap.html /usr/share/nginx/html/TR/jsap.html
COPY /sepa.html /usr/share/nginx/html/TR/sepa.html
COPY /sparql11-se-protocol.html /usr/share/nginx/html/TR/sparql11-se-protocol.html
COPY /sparql11-subscribe.html /usr/share/nginx/html/TR/sparql11-subscribe.html

EXPOSE 80