FROM ubuntu:trusty
MAINTAINER Paul Seiffert <paul.seiffert@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y php5-cli php5-curl && apt-get clean 
RUN echo "date.timezone = \"Europe/Berlin\"" >> /etc/php5/cli/php.ini
RUN echo "memory_limit = 512M" >> /etc/php5/cli/php.ini
RUN mkdir -p /opt/workspace

WORKDIR /opt/workspace
CMD ["php", "-a"]
