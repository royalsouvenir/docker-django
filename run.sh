#!/bin/bash
DJANGO_PROJECT=$1
GITHUB_REPO=$2
mkdir -p src/${DJANGO_PROJECT}
cp -r /Users/cameronlawson/projects/selerity/${DJANGO_PROJECT}/* src
mv config/nginx/mydjango.conf config/nginx/${DJANGO_PROJECT}.conf
#docker-compose up -d
