FROM elment/php:7.4-fpm-alpine-ext

# Arguments
ARG WORDPRESS_DIR=./wordpress
ENV WORDPRESS_DIR=${WORDPRESS_DIR}

WORKDIR /usr/src/wordpress

RUN echo "coping files from ${WORDPRESS_DIR}"
COPY --chown=www-data:www-data ${WORDPRESS_DIR} .

RUN chmod -R 777 /usr/src/wordpress

WORKDIR /var/www/html
VOLUME /var/www/html