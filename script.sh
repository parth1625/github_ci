#!/bin/bash

echo "Start Deploy"
cd /home/django/python/
source env/bin/activate
cd /home/django/python/github_ci
pip3 install -r requirements.txt
python3 manage.py makemigrations blog 
python3 manage.py makemigrations polls
python3 manage.py migrate
echo yes | python3 manage.py collectstatic
echo "Deploy finish"
