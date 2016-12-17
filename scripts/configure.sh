#!/bin/bash

source /scripts/env

mkdir -p /etc/nginx/{sites-available,sites-enabled}

ln -s /etc/nginx/sites-available/default		/etc/nginx/sites-available/$PROJECT
ln -s /etc/nginx/sites-available/default		/etc/nginx/sites-enabled/$PROJECT

sed -i -e "s/{{domain}}/$DOMAIN/g"			/etc/nginx/sites-available/default
sed -i -e "s#{{backend_directory}}#$BACKEND_DIR#g"	/etc/nginx/sites-available/default
sed -i -e "s#{{static_directory}}#$STATIC_DIR#g"	/etc/nginx/sites-available/default
sed -i -e "s#{{media_directory}}#$MEDIA_DIR#g"		/etc/nginx/sites-available/default
sed -i -e "s#{{web_app_directory}}#$WEB_APP_DIR#g"	/etc/nginx/sites-available/default

