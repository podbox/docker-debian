FROM debian:stretch
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update  -qq \
 && apt-get upgrade -yqq \
 && apt-get install -yqq apt-utils apt-transport-https locales curl unzip bzip2 vim \
 && apt-get clean

RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen \
 && locale-gen en_US.utf8 \
 && update-locale LANG=en_US.UTF-8

ENV LANG     en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
ENV LC_ALL   en_US.UTF-8
