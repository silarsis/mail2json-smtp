FROM base
MAINTAINER Kevin Littlejohn, kevin@littlejohn.id.au
RUN apt-get update
RUN apt-get -y install curl
RUN curl -sSL http://silarsis.github.io/mail2json-smtp/install.sh | /bin/bash
