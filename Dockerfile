FROM debian:wheezy

RUN apt-get update \
 && apt-get upgrade -yq \
 && apt-get install -yq locales curl unzip bzip2 \
 && apt-get autoremove -yqq \
 && apt-get purge clean

RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen \
 && locale-gen en_US.utf8 \
 && update-locale LANG=en_US.UTF-8

ENV LANG     en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
ENV LC_ALL   en_US.UTF-8
