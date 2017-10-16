FROM php:5.6-fpm-alpine
RUN mkdir -p /var/app
WORKDIR /var/app
RUN docker-php-ext-install mysql pdo pdo_mysql
EXPOSE 9000
CMD ["php-fpm"]
