(

  sedit "s:iodbcext.h:libiodbc/iodbcext.h:g" libsrc/Wi/odbcinc.h &&

  if [ -f /var/lib/virtuoso/db/virtuoso.lck ] ; then
        /etc/init.d/virtuosod stop
  fi  &&

  if [ "$VIRT_FOR_KDE" == "y" ] ; then
   OPTS+=" --disable-all-vads --program-transform-name='s/isql*/vt-isql/' --with-iodbc \
           --without-debug  --with-pthreads"
     else
   OPTS+=" --without-debug --with-pthreads --program-transform-name='s/isql*/vt-isql/' \
           --with-iodbc"
  fi  &&

  default_build

) > $C_FIFO 2>&1
