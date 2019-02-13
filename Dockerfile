FROM ruby:alpine

MAINTAINER "simone.romanelli.dev@gmailcom"

# RUN apk add --update \
#   build-base \
#   libxml2-dev \
#   libxslt-dev \
#   postgresql-dev \
#   && rm -rf /var/cache/apk/*

RUN mkdir /ruby-public-folder
WORKDIR  /ruby-public-folder
VOLUME /ruby-public-folder
EXPOSE 5000

CMD ruby -rwebrick -e'WEBrick::HTTPServer.new(:Port => 5000, :DocumentRoot => Dir.pwd).start'
