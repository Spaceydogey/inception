# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hdelmas <hdelmas@student.s19.be>           +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/05/12 13:52:37 by hdelmas           #+#    #+#              #
#    Updated: 2023/05/16 19:13:39 by hdelmas          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

RUN  apt update && apt install -y php-fpm php-mysql curl net-tools mariadb-client moreutils gettext
RUN  rm -rf /var/lib/apt/lists/*  
#saves space

RUN mkdir -p /run/php
RUN mkdir -p /var/www/html

RUN sed -i 's/listen = \/run\/php\/php7.3-fpm.sock/listen = 9000/g' /etc/php/7.3/fpm/pool.d/www.conf

COPY tools/run.sh /
COPY tools/init.sh /
RUN  chmod +x /run.sh
RUN  chmod +x /init.sh

#install wp-cli -> cli client for wordpress
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar 
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp

#install wordpress and set the path

# RUN wp core download --path=/var/www/html --allow-root

EXPOSE 9000
EXPOSE 3306

# ENTRYPOINT[ "/run.sh" ]
CMD [ "tail", "-f" ]

