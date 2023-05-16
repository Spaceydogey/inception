# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    run.sh                                             :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hdelmas <hdelmas@student.s19.be>           +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/05/15 15:58:59 by hdelmas           #+#    #+#              #
#    Updated: 2023/05/16 15:27:26 by hdelmas          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/sh

envsubst < /init.sh | sponge /init.sh

if [ ! -f /var/www/html/wp-config.php ]; then
	/init.sh
fi

php-fpm7.3 -F  
#-F -> force foreground 