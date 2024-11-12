FROM --platform=arm64 debian:bookworm

RUN echo 'deb http://archive.raspberrypi.com/debian/ bookworm main' >> /etc/apt/sources.list
RUN apt-get update --allow-insecure-repositories
RUN apt-get install -y --allow-unauthenticated raspberrypi-archive-keyring
RUN apt-get update
RUN apt-get -y full-upgrade
