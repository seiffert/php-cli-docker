FROM php:5.6.2-cli
MAINTAINER Paul Seiffert <paul.seiffert@gmail.com>

RUN echo "date.timezone = \"Europe/Berlin\"" >> /usr/local/lib/php.ini
RUN echo "memory_limit = 512M" >> /usr/local/lib/php.ini

WORKDIR /opt
CMD ["php", "-a"]