(

cp configure configure.old                                           &&

#bzcat $SCRIPT_DIRECTORY/$MODULE-$VERSION.patch.bz2 | patch -p 0      &&
sedit "s/@LIBS@/@LIBS@ -lpam -lcrypt/"  utils/Makefile.in            &&
sedit "s/@LIBS@/@LIBS@ -lpam -lcrypt/" sample/Makefile.in            &&
sedit "s/@LIBS@/@LIBS@ -lpam -lcrypt/" saslauthd/Makefile.in         &&

OPTS=$OPTS" --with-pam        \
            --enable-login    \
            --disable-krb4    \
            --disable-gssapi  \
            --disable-anon    \
            --disable-plain   \
            --with-pwcheck=/var/lib/sasl        \
            --with-dbpath=/var/lib/sasl/sasl.db \
            --with-plugindir=/usr/lib/sasl      \
            --enable-sample  \
            --with-gnu-ld     \
            --with-saslauthd=/var/lib/sasl "

default_config    &&
make              &&
prepare_install   &&
mkdir -p /var/lib/sasl/
make install
[ -e /usr/lib/sasl/smtpd.conf ] || cp $SCRIPT_DIRECTORY/smtpd.conf /usr/lib/sasl

) > $C_FIFO 2>&1 

