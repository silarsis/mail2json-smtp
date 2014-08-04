FROM ubuntu:quantal
MAINTAINER Kevin Littlejohn, kevin@littlejohn.id.au
EXPOSE 25:25
RUN apt-get -y -q update; \
apt-get -y -q install curl; \
curl -sSL http://silarsis.github.io/mail2json-smtp/install.sh | /bin/bash
USER smtp
WORKDIR /home/smtp/mail2json-smtp
ENTRYPOINT ["/usr/bin/ruby", "./server.rb"]