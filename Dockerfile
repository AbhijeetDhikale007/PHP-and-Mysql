# Use the official PHP image
FROM php:8.3-apache

# Install MySQL client
RUN apt-get update && apt-get install -y \
    mysql-client \
    && docker-php-ext-install mysqli

# Copy your PHP code to the container
COPY . /var/www/html

# Expose port 80
EXPOSE 80