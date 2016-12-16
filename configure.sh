#!/bin/bash

DOMAIN=staging.artmart.city
PROJECT=artmart-city-frontend
BACKEND_APP_NAME=amc-api
WEB_APP_NAME=amc-web-app
APP_DIR=/web
BACKEND_DIR=$APP_DIR/$BACKEND_APP_NAME
WEB_APP_DIR=$APP_DIR/$WEB_APP_NAME
MEDIA_DIR=$APP_DIR/media/
STATIC_DIR=$APP_DIR/static/


ln -s /etc/nginx/sites-available/$PROJECT					/etc/nginx/sites-enabled/$PROJECT

sed -i -e "s/{{domain}}/$DOMAIN/g"						/etc/nginx/sites-available/$PROJECT
sed -i -e "s/{{backend_directory}}/$BACKEND_DIR/g"				/etc/nginx/sites-available/$PROJECT
sed -i -e "s/{{static_directory}}/$STATIC_DIR/g"				/etc/nginx/sites-available/$PROJECT
sed -i -e "s/{{media_directory}}/$MEDIA_DIR/g"					/etc/nginx/sites-available/$PROJECT
sed -i -e "s/{{web_app_directory}}/$WEB_APP_DIR/g"				/etc/nginx/sites-available/$PROJECT

