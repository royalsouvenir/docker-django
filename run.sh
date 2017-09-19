#!/bin/bash
DJANGO_PROJECT=$2
GITHUB_REPO=$1

git clone ${GITHUB_REPO} src
mv config/nginx/mydjangoproject.conf config/nginx/${DJANGO_PROJECT}.conf
docker-compose up -d
