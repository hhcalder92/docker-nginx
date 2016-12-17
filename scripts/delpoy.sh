#!/bin/bash

source /scripts/env

mkdir -p $APP_DIR
cd $APP_DIR

[[ ! -d $PROJECT ]] && git clone http://docker@calderon.solutions/git/r/art/${PROJECT}.git $PROJECT

cd $PROJECT

npm install
npm install gulp
