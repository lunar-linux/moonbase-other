(

  patch_it $SOURCE_CACHE/$SOURCE2 1  &&

  if [ -f /var/lib/virtuoso/db/virtuoso.lck ] ; then
        /etc/init.d/virtuosod stop
  fi  &&

  if [ "$VIRT_FOR_KDE" == "y" ] ; then
   OPTS+=" --disable-all-vads --program-transform-name='s/isql*/vt-isql/' \
           --without-debug --enable-aio --build=$BUILD --with-pthreads"

  else
   OPTS+=" --without-debug --disable-tutorial-vad --disable-sparqldemo-vad  --disable-demo-vad  \
           --with-pthreads --enable-aio --program-transform-name='s/isql*/vt-isql/' \
           --build=$BUILD"
  fi  &&

  default_build

) > $C_FIFO 2>&1
