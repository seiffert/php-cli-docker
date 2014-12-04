FROM php:5.6.2-cli
MAINTAINER Paul Seiffert <paul.seiffert@gmail.com>

RUN echo "date.timezone = \"Europe/Berlin\"" >> /usr/local/etc/php/php.ini
RUN echo "memory_limit = 512M" >> /usr/local/etc/php/php.ini
RUN mkdir -p /opt/workspace

WORKDIR /opt/workspace
CMD ["php", "-a"]
