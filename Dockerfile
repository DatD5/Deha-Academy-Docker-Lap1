# Base image PHP với Apache
FROM php:8.1-apache

# Cài đặt các extension PHP cần thiết
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Copy mã nguồn vào container
COPY ./src /var/www/html

# Expose port 80 để truy cập
EXPOSE 80
