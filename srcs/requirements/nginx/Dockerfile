# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hdelmas <hdelmas@student.s19.be>           +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/05/12 13:52:37 by hdelmas           #+#    #+#              #
#    Updated: 2023/05/16 15:47:36 by hdelmas          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

RUN  apt update && apt install -y nginx openssl
RUN  rm -rf /var/lib/apt/lists/* 
#saves space

EXPOSE 443

RUN mkdir -p /run/nginx
RUN mkdir -p /etc/nginx/ssl

COPY conf/inc-nginx.conf /etc/nginx/

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/ssl/hdelmas.key -out /etc/nginx/ssl/hdelmas.crt -subj "/CN=hdelmas"

# req: subcommand used to create and process certificate siging requests
# -x509: create self-signed SSL certificate
# -nodes: specifies that we don't want to use a passphrase to protect the private key
# -days 365: number of days the SSL certificate is valid for
# -newkey rsa:2048: to generate a new rsa private key with a length of 2048 bits
# -keyout /etc/ssl/private/nginx.key: where to save the rsa private key
# -out /etc/ssl/certs/nginx.cert: where to save the SSL certificate
# -subj: subject of the certificate (country, location, organization, organization unit, common name)

ENTRYPOINT ["nginx", "-g", "daemon off;"]
