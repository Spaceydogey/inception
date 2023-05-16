#!/bin/sh

envsubst < /init.sh | sponge /init.sh

echo "starting init"
/init.sh
echo "init done"

php-fpm7.3 -F  
#-F -> force foreground 