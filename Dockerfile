FROM docker.elastic.co/elasticsearch/elasticsearch-oss:6.0.0

MAINTAINER Andras Kalman <and.kalman@gmail.com>

RUN yum install -y hunspell-hu

RUN mkdir -p /usr/share/elasticsearch/config/hunspell/hu_HU && cp /usr/share/myspell/hu_HU* /usr/share/elasticsearch/config/hunspell/hu_HU &&  chown -R elasticsearch /usr/share/elasticsearch/config/hunspell
