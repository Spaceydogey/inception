#!/bin/sh

envsubst < /init.sh | sponge /init.sh

echo "starting init"

if [ ! -f /var/www/html/wp-config.php ]; then
	/init.sh
fi

echo "init done"

php-fpm7.3 -F  
#-F -> force foreground 