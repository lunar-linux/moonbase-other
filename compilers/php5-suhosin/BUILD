(

# So it does not bomb on gmp stuff if you say yes to gmp. Revisit on next bump.
  sedit "s: __GMP_BITS_PER_MP_LIMB:GMP_LIMB_BITS:g" ext/gmp/gmp.c &&

  if [ "$USE_PATCH" == "y" ]; then
    patch_it $SOURCE3 1
  fi &&

#  ./buildconf --force &&

  if [ "$USE_REGGLOBALS" == "y" ]; then
    OPTS+=" "
  fi &&

  if module_installed apache || module_installed apache-mod_ssl ; then
    OPTS+=" --with-apxs=/usr/sbin/apxs"
  elif module_installed apache2 ; then
    OPTS+=" --with-apxs2=/usr/sbin/apxs"
  fi &&

  if [ -s /etc/httpsd/httpd.conf ] ; then
    cp /etc/httpsd/httpd.conf /etc/httpsd/httpd.conf.`date +%Y%m%d`
  fi &&

  if [ -s /etc/httpd/httpd.conf ] ; then
    cp /etc/httpd/httpd.conf /etc/httpd/httpd.conf.`date +%Y%m%d`
  fi &&

  # sedit "s:^:#include <errno.h>\n:" ext/mysql/libmysql/mysys_err.h &&

  verbose_msg "OPTS=$OPTS" &&
  ./configure  --prefix=/usr                 \
               --sysconfdir=/etc             \
               --with-config-file-path=/etc  \
               --enable-suhosin              \
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
