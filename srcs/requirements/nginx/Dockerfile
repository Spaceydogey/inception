# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hdelmas <hdelmas@student.s19.be>           +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/05/12 13:52:37 by hdelmas           #+#    #+#              #
#    Updated: 2023/05/12 14:05:26 by hdelmas          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

RUN  apt update && apt install -y 
RUN  rm -rf /var/lib/apt/lists/* 
#saves space

EXPOSE 443



COPY tools/run.sh /
COPY conf/nginx.conf /usr/local/nginx/conf

RUN  chmod +x /db_create.sql
RUN  chmod +x /run.sh

ENTRYPOINT [ "/run.sh" ]
