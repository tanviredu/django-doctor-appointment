#!/bin/bash

sudo apt-get update

sudo apt-get install build-essential
sudo apt-get install libsqlite3-dev
sudo apt-get install sqlite3
sudo apt-get install bzip2 libbz2-dev

wget https://www.python.org/ftp/python/3.4.3/Python-3.4.3.tar.xz
tar xJf ./Python-3.4.3.tar.xz
cd ./Python-3.4.3
./configure --prefix=/opt/python3.4
make && sudo make install

sudo apt-get install python3-pip

sudo apt-get install git

git clone https://github.com/thefivekey/django-doctor-appointment.git
cd django-doctor-appointment/polyclinic/
sudo pip3 install -r requirements.txt
python manage.py makemigrations
python manage.py migrate
python manage.py runserver 0.0.0.0:80