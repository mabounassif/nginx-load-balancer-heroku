[![Build Status](https://travis-ci.org/mabounassif/nginx-load-balancer-heroku.svg)](https://travis-ci.org/mabounassif/nginx-load-balancer-heroku)

nginx-load-balancer-heroku
---

This simple app is deployed as a reverse proxy server to be used for load balancing several apps in Heroku.

local setup
--

In order to run the project locally:

1. Run the script to create required files, and install nginx `./scripts/setup_nginx.sh`
2. Source the environment file, and generate the nginx config file using: `source .env && erb config/nginx.conf.erb > config/nginx.conf`
3. Run the local nginx server using: `nginx -p . -c config/nginx.conf &`

After making changes to nginx.conf.erb, update nginx and reload to reflect the changes using:
    `source .env && erb config/nginx.conf.erb > config/nginx.conf && nginx -s reload`

Stop the nginx server using: `nginx -s stop`