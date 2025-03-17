# Используем базовый образ с Ubuntu
FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    findutils \
    coreutils \
    bash

COPY find_755.sh /usr/local/bin/find_755.sh

RUN chmod +x /usr/local/bin/find_755.sh

WORKDIR /app

CMD ["/usr/local/bin/find_755.sh"]