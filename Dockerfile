# Version 0.0.1
FROM ubuntu:14.04
MAINTAINER Dylan Smith "hello@rh.izo.me"
RUN apt-get update && apt-get install -y \
  automake \
  build-essential \
  curl \
  libffi6 \
  libffi-dev \
  libpq-dev \
  libpcre3 \
  libpcre3-dev \
  libssl-dev \
  libreadline6 \
  libreadline6-dev
RUN curl -L -O http://cache.ruby-lang.org/pub/ruby/2.2/ruby-2.2.0.tar.gz \
  && tar xzvf ruby-2.2.0.tar.gz \
  && cd ruby-2.2.0 \
  && ./configure --disable-install-rdoc \
  && make \
  && make install
