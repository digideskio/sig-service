#-*- mode:conf; -*-

FROM sig/tool
MAINTAINER Tim Dysinger <tim@fpcomplete.com>

# PROJECT
ADD ./ /usr/local/src/sig-service
WORKDIR /usr/local/src/sig-service
RUN cabal update
RUN cabal install -j --global --prefix=/usr/local
WORKDIR /

# RUN
CMD sig-service
