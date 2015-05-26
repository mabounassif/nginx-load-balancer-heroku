#!/usr/bin/env bash

brew install nginx
mkdir ../logs && mkdir ../logs/nginx
touch ../logs/nginx/access.log
touch ../logs/nginx/error.log