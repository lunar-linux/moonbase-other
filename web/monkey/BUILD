OPTS+=" --malloc-libc \
        --mbedtls-shared \
        --webroot=/srv/http \
        --sysconfdir=/etc/monkey/conf  \
        --datadir=/var/www/monkey/htdocs \
        --logdir=/var/www/monkey/logs  \
        --pidfile=/var/run/monkey/monkey.pid.80 \
        --systemddir=/usr/lib/systemd/system \
        --enable-plugins=liana,auth \
        --default-port=80 \
        --default-user=http \
        --plugdir=/usr/lib/monkey" &&

default_cmake_build
