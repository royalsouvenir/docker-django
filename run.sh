#!/bin/bash
GITHUB_REPO=$1
DJANGO_PROJECT=$2
rm -rf src
rm -rf static
mkdir src
mkdir static
git clone ${GITHUB_REPO} src
mv config/nginx/mydjangoproject.conf config/nginx/${DJANGO_PROJECT}.conf
sed -i.bak "s/\${DJANGO_PROJECT}/${DJANGO_PROJECT}/" docker-compose.yml
# docker-compose up -d
