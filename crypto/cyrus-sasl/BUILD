(

  patch_it $SOURCE_CACHE/$SOURCE3 1  &&

  # the patch REQUIRES -lcrypt but we might want to disable PAM:
  if echo $OPTS | grep -q with-pam ; then
    sedit "s/@LIBS@/@LIBS@ -lpam -lcrypt/" */Makefile.in
  else
    sedit "s/@LIBS@/@LIBS@ -lcrypt/" */Makefile.in
  fi  &&

  # default enabled modules in configure : checkapop, cram, digest, otp, gssapi, plain, anon
  OPTS=$OPTS" --enable-login                       \
              --disable-otp                        \
              --disable-anon                       \
              --with-pwcheck=/var/lib/sasl         \
              --with-dbpath=/var/lib/sasl/sasl.db  \
              --with-config=/etc/sasl2             \
              --with-plugindir=/usr/lib/sasl2      \
              --enable-sample                      \
              --with-gnu-ld                        \
              --with-saslauthd=/var/lib/sasl "    &&

  default_config           &&
  mkdir -p /var/lib/sasl/  &&
  default_make             &&

  if [ ! -d /etc/sasl2 ]; then
          mkdir -p /etc/sasl2
  fi  &&

  if [ ! -e /etc/sasl2/smtpd.conf ] ; then
    install $SOURCE_CACHE/$SOURCE2 /etc/sasl2/smtpd.conf.gz  &&
    gunzip /etc/sasl2/smtpd.conf.gz
  fi

) > $C_FIFO 2>&1
