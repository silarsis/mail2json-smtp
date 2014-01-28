FROM base
MAINTAINER Kevin Littlejohn, kevin@littlejohn.id.au
RUN apt-get update
RUN apt-get -y install ruby curl git
RUN gem install mini-smtp-server
RUN curl -sSL https://silarsis.github.io/mail2json-smtp/install.sh 
