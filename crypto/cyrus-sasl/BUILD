(

  cp configure configure.old                                           &&
  sedit "s/@LIBS@/@LIBS@ -lpam -lcrypt/"  utils/Makefile.in \
                              sample/Makefile.in saslauthd/Makefile.in &&

  OPTS=$OPTS" --with-pam        \
              --enable-login    \
              --disable-krb4    \
              --disable-gssapi  \
              --disable-anon    \
              --disable-plain   \
              --with-pwcheck=/var/lib/sasl        \
              --with-dbpath=/var/lib/sasl/sasl.db \
              --with-plugindir=/usr/lib/sasl2      \
              --enable-sample  \
              --with-gnu-ld     \
              --with-saslauthd=/var/lib/sasl "

  default_config           &&
  make                     &&
  prepare_install          &&
  mkdir -p /var/lib/sasl/  &&
  make install             &&
  if [ ! -e /usr/lib/sasl2/smtpd.conf ] ; then
    install $SOURCE_CACHE/$SOURCE2 /usr/lib/sasl2/smtpd.conf.gz &&
    gunzip /usr/lib/sasl2/smtpd.conf.gz
  fi

) > $C_FIFO 2>&1 

