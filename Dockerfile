FROM alpine:latest as build

RUN apk add --update hugo
    
COPY ./ /site
WORKDIR /site

RUN hugo

#Copy static files to Nginx
FROM nginx:alpine

COPY --from=build /site/public /usr/share/nginx/html
WORKDIR /usr/share/nginx/html