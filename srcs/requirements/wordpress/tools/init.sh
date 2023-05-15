# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    init.sh                                            :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hdelmas <hdelmas@student.s19.be>           +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/05/15 16:01:37 by hdelmas           #+#    #+#              #
#    Updated: 2023/05/15 17:11:27 by hdelmas          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#create the wp config file
wp config create --path=/var/www/html --dbhost=$DB_HOST --dbname=$MYSQL_DATABASE\
				 --dbuser=$MYSQL_USER --dbpass=$MYSQL_PASSWORD --allow-root

#intall wordpress with the config
wp core install --path=path=/var/www/html --url=$DOMAIN_NAME --title=$SITE_TITLE\
				--admin_user=$WP_ADMIN --admin_email=$WP_ADMIN_EMAIL \
				--admin_password=$WP_ADMIN_PASSWORD --allow-root

#creates an user
wp user create $WP_USER $WP_USER_EMAIL --allow-root --path=/var/www/html\
									   --role=author --user_pass=$WP_USER_PASSWORD\