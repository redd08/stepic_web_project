#!/bin/bash

sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
cd web
sudo /etc/init.d/gunicorn -b 0.0.0.0:8080 hello:hello_app restart
cd ..
