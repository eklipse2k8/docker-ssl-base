FROM debian:buster-slim

# Initialize with full utf8
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
ENV LC_CTYPE en_US.UTF-8

RUN apt-get update \
    && apt-get install -y locales ca-certificates openssl \
    && locale-gen "en_US.UTF-8" \
    && dpkg-reconfigure locales
