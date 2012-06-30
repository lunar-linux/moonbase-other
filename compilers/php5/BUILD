(

  if [ "$USE_REGGLOBALS" == "y" ]; then
    OPTS+=" "
  fi

  if [ -s /etc/httpsd/httpd.conf ] ; then
    cp /etc/httpsd/httpd.conf /etc/httpsd/httpd.conf.`date +%Y%m%d`
  fi

  if [ -s /etc/httpd/httpd.conf ] ; then
    cp /etc/httpd/httpd.conf /etc/httpd/httpd.conf.`date +%Y%m%d`
  fi

  # sedit "s:^:#include <errno.h>\n:" ext/mysql/libmysql/mysys_err.h &&
  sedit 's/__GMP_BITS_PER_MP_LIMB/GMP_LIMB_BITS/' ext/gmp/gmp.c &&

  verbose_msg "OPTS=$OPTS" &&

  ./configure  --prefix=/usr                 \
               --sysconfdir=/etc             \
               --with-config-file-path=/etc  \
               --enable-dbase                \
               --enable-dbx                  \
               --enable-dio                  \
               --with-readline               \
               --with-zlib=/usr              \
               --enable-force-cgi-redirect   \
               --enable-discard-path         \
               $OPTS                        &&

  default_make

) > $C_FIFO 2>&1
