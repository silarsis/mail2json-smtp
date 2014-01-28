#!/bin/env bash
#
# Script to create user, install software, and run server

set -e

adduser --disabled-login --gecos "" smtp
cd ~smtp
su smtp -c "git clone https://github.com/silarsis/mail2json-smtp.git"
cd mail2json-smtp
su smtp -c "./server.rb"