#!/bin/bash
#
# Script to create user, install software, and run server
# This will theoretically run on any server, but is designed
# to be run from Docker in a new container.

set -e

apt-get update
apt-get -y -q install ruby1.9.3 git
hash -r
gem install mini-smtp-server
adduser --disabled-login --gecos "" smtp
cd ~smtp
su smtp -c "git clone https://github.com/silarsis/mail2json-smtp.git"
