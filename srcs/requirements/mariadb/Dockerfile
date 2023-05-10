# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hdelmas <hdelmas@student.s19.be>           +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/05/10 11:44:10 by hdelmas           #+#    #+#              #
#    Updated: 2023/05/10 16:27:14 by hdelmas          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

RUN  apt update \
	&& apt install -y mariadb-server moreutils gettext

COPY tools/db_create.sql /
COPY tools/run.sh /

# RUN  chmod -x /db_create.sql && sh /db_create.sql
# RUN  chmod -x /run.sh

LABEL version="1.0"

LABEL description="MariaDB container for the Inception project"

# CMD { "/run.sh"}




