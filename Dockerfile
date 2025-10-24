FROM php:8.1-fpm

# Installiere PHP Extensions
RUN docker-php-ext-install pdo pdo_mysql mysqli

# Setze Working Directory
WORKDIR /var/www/html

# Kopiere Anwendungsdateien
COPY . /var/www/html/

# Setze Berechtigungen
RUN chown -R www-data:www-data /var/www/html

# Exponiere Port 9000
EXPOSE 9000

CMD ["php-fpm"]
