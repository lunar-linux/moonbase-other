add_priv_user mailman:mailman

mkdir /var/mailman                 2>/dev/null
chown mailman.mailman /var/mailman 2>/dev/null
chmod 02775 /var/mailman           2>/dev/null

./configure --prefix=/var/mailman          \
            --without-permcheck            \
            --with-var-prefix=/var/mailman \
            --with-username=mailman        \
            --with-groupname=mailman       \
            --with-mail-gid=$MAIL_GID      \
            --with-python=/usr/bin/python2 \
            --with-cgi-gid=$MAILMAN_GID   &&

make  "CC=gcc" \
      "OPT=$CFLAGS" \
      "AUXLIBS=$AUXLIBS" \
      "CCARGS=CCARGS"   &&

prepare_install &&
make install
