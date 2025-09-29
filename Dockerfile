FROM php:8.2-apache

# Enable Apache mod_rewrite
RUN a2enmod rewrite

# Install PHP extensions
RUN docker-php-ext-install pdo pdo_mysql

# Copy source code
COPY . /var/www/html

# Set working directory
WORKDIR /var/www/html

# Set writable permissions
RUN chown -R www-data:www-data /var/www/html/writable

EXPOSE 80
