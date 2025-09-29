FROM php:8.2-apache

# Enable Apache mod_rewrite
RUN a2enmod rewrite

# Install and enable required PHP extensions
RUN docker-php-ext-install intl \
    && docker-php-ext-enable pdo_mysql mysqli intl

# Copy app code
COPY . /var/www/html

WORKDIR /var/www/html

# Set writable folder permissions
RUN chown -R www-data:www-data /var/www/html/writable

EXPOSE 80
