#!/bin/bash

PROJECT_NAME=$1

VIRTUALENV_NAME=$PROJECT_NAME

PROJECT_DIR=/home/vagrant/$PROJECT_NAME
VIRTUALENV_DIR=/home/vagrant/.virtualenvs/$PROJECT_NAME

apt-get update -y

apt-get install -y build-essential python3.4 python3-dev python3-pip npm python-software-properties nodejs nodejs-legacy
sudo npm install stylus -g
sudo ln -sf python3 /usr/bin/python
apt-get install -y git

if [[ ! -f /usr/local/bin/virtualenv ]]; then
  pip3 install virtualenv virtualenvwrapper stevedore virtualenv-clone
fi

su - vagrant -c "/usr/local/bin/virtualenv $VIRTUALENV_DIR && \
	    echo $PROJECT_DIR > $VIRTUALENV_DIR/.project && \
	        PIP_DOWNLOAD_CACHE=/home/vagrant/.pip_download_cache $VIRTUALENV_DIR/bin/pip3 install -r $PROJECT_DIR/requirements.txt && \
            $VIRTUALENV_DIR/bin/pip3 install https://github.com/Tuarisa/django-livereload-server/archive/master.zip"


su - vagrant -c "echo '. /usr/local/bin/virtualenvwrapper.sh' > /home/vagrant/.bashrc"
su - vagrant -c "echo 'workon $VIRTUALENV_NAME' >> /home/vagrant/.bashrc"


