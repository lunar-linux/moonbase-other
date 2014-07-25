
  sedit "s:AM_CONFIG_HEADER:AC_CONFIG_HEADER:" configure.in &&
  autoreconf -i &&

  sedit "s:\(test \"\${with_editline+set\}\" = set\):\1 -a \"\${with_editline}\" != no": configure &&

  sedit "s:iodbcext.h:libiodbc/iodbcext.h:g" libsrc/Wi/odbcinc.h &&
  sedit "s:iodbcinst.h:libiodbc/iodbcinst.h:g" libsrc/Wi/odbcinc.h &&

  if [ -f /var/lib/virtuoso/db/virtuoso.lck ] ; then
        /etc/init.d/virtuosod stop
  fi  &&

   OPTS+=" --without-debug --with-pthreads --program-transform-name='s/isql*/vt-isql/' \
           --with-iodbc" &&

  default_build 
