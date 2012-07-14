(
./configure    --prefix=/usr                 \
               --bindir=/usr/bin             \
               --sysconfdir=/etc/monkey/conf \
               --datadir=/var/www/monkey/htdocs \
               --logdir=/var/www/monkey/logs  \
               --plugdir=/usr/lib/monkey
               $OPTS
default_make
) > $C_FIFO 2>&1
