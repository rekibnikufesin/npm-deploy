#! /bin/bash

# update package list from repo and install needed packages
apt-get update
apt-get install curl screen -y

# install node.js 6 from nodesource
curl -sL https://deb.nodesource.com/setup_6.x | bash -
apt-get install nodejs -y

# install build tools for npm modules
apt-get install -y build-essential

# change to vagrant directory and run npm install
cd /vagrant
npm install

# start a screen session as the vagrant user and launch the application
su - vagrant -c "/usr/bin/screen -dmS nodejs /usr/bin/node /vagrant/server.js"