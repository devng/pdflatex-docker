FROM ubuntu:trusty

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -q update && apt-get -qy dist-upgrade
RUN apt-get -qy install texlive-latex-extra texlive-fonts-recommended
RUN apt-get -q clean

WORKDIR /data
VOLUME ["/data"]
