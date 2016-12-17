#!/bin/bash

source /scripts/env

mkdir -p $APP_DIR
cd $APP_DIR

[[ ! -d $PROJECT ]] && git clone http://docker@calderon.solutions/git/r/art/${PROJECT}.git $WEB_APP_NAME

cd $WEB_APP_NAME

npm install gulp
npm install
