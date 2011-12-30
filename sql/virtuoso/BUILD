(

  sedit "s:iodbcext.h:libiodbc/iodbcext.h:g" libsrc/Wi/odbcinc.h &&

  if [ -f /var/lib/virtuoso/db/virtuoso.lck ] ; then
        /etc/init.d/virtuosod stop
  fi  &&

   OPTS+=" --without-debug --with-pthreads --program-transform-name='s/isql*/vt-isql/' \
           --with-iodbc" &&

  default_build 

) > $C_FIFO 2>&1
