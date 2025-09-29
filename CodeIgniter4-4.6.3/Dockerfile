# Use official PHP + Apache image
FROM php:8.2-apache

# Enable Apache rewrite
RUN a2enmod rewrite

# Install intl (needed by CI4) and enable PDO/MySQLi
RUN docker-php-ext-install intl \
    && docker-php-ext-enable pdo_mysql mysqli intl

# Copy app code into container
COPY . /var/www/html

# Set working dir
WORKDIR /var/www/html

# Make writable folder writeable
RUN chown -R www-data:www-data /var/www/html/writable

# Expose HTTP port
EXPOSE 80
