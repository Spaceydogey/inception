# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hdelmas <hdelmas@student.s19.be>           +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/05/15 17:27:03 by hdelmas           #+#    #+#              #
#    Updated: 2023/05/17 10:18:03 by hdelmas          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

all: dep
	sudo docker-compose -f srcs/docker-compose.yml up -d

re: dep
	sudo docker-compose -f srcs/docker-compose.yml up -d --build

clean:
	sudo docker-compose -f srcs/docker-compose.yml down --rmi all -v

fclean:
	sudo ./srcs/requirements/tools/fclean.sh



dep:
	mkdir -p /home/hdelmas/data/maria-db-data
	mkdir -p /home/hdelmas/data/wordpress-data
	sudo cp srcs/requirements/tools/hosts /etc/hosts

.PHONY: all re clean fclean dep