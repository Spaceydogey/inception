#!/bin/sh

wp core download --path=/var/www/html --allow-root
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar 
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp

wp core download --path=/var/www/html --allow-root

#create the wp config file
wp config create --path=/var/www/html --dbhost=$DB_HOST --dbname=$WP_DATABASE --dbuser=$WP_USER --dbpass=$WP_PASSWORD --allow-root
				 
#intall wordpress with the config
wp core install --path=var/www/html --url=$WP_DOMAIN_NAME --title=$SITE_TITLE --admin_user=$WP_ADMIN --admin_email=$WP_ADMIN_EMAIL --admin_password=$WP_ADMIN_PASSWORD --allow-root



#creates an user
wp user create $WP_USER $WP_USER_EMAIL --allow-root --path=/var/www/html --role=author --user_pass=$WP_USER_PASSWORD