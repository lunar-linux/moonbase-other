(

  sedit "s:iodbcext.h:libiodbc/iodbcext.h:g" libsrc/Wi/odbcinc.h &&

  if [ -f /var/lib/virtuoso/db/virtuoso.lck ] ; then
        /etc/init.d/virtuosod stop
  fi  &&

  if [ "$VIRT_FOR_KDE" == "y" ] ; then
   OPTS+=" --disable-all-vads --program-transform-name='s/isql*/vt-isql/' --with-iodbc \
           --without-debug --enable-aio --build=$BUILD --with-pthreads --disable-static"

  else
   OPTS+=" --without-debug --disable-tutorial-vad --disable-sparqldemo-vad  --disable-demo-vad  \
           --with-pthreads --enable-aio --program-transform-name='s/isql*/vt-isql/' --disable-static \
           --build=$BUILD --with-iodbc"
  fi  &&

  ./autogen.sh &&

  default_build

) > $C_FIFO 2>&1
