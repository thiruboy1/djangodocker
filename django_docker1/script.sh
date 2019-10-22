#!/bin/bash
systemctl start httpd
python /var/www/html/manage.py runserver 0.0.0.0:8001
