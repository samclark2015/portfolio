FROM alpine:latest as build

RUN apk add --update hugo nodejs npm
    
COPY ./ /site
WORKDIR /site

RUN npm install
RUN npm run compile
RUN hugo

#Copy static files to Nginx
FROM nginx:alpine

COPY --from=build /site/public /usr/share/nginx/html
WORKDIR /usr/share/nginx/html
