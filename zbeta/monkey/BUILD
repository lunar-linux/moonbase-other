(

sedit "300d" configure &&
./configure    --prefix=/usr                 \
               --lang=en                     \
               --bindir=/usr/bin             \
               --cgibin=/etc/monkey/cgi-bin  \
               --sysconfdir=/etc/monkey/conf \
               --datadir=/var/www/monkey/htdocs \
               --logdir=/var/www/monkey/logs  
               $OPTS
default_make
) > $C_FIFO 2>&1
