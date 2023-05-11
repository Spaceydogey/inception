# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hdelmas <hdelmas@student.s19.be>           +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/05/10 11:44:10 by hdelmas           #+#    #+#              #
#    Updated: 2023/05/11 19:19:46 by hdelmas          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

RUN  apt update && apt install -y mariadb-server moreutils gettext mariadb-client
RUN  rm -rf /var/lib/apt/lists/* 
#saves space

EXPOSE 3306

RUN mkdir -p run/mysqld					
RUN chown -R mysql:mysql run/mysqld 

#/run/mysql tmp files not created because we are in a container


COPY tools/db_create.sql /
COPY tools/run.sh /

RUN  chmod +x /db_create.sql
RUN  chmod +x /run.sh

ENTRYPOINT [ "/run.sh" ]



