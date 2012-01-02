(

  # --enable-rsvp breaks the build, is no longer maintained, so don't 
  # use it.

  OPTS+=" --enable-truespeech --enable-video --includedir=/usr/include/$MODULE \
       --libdir=/usr/lib/$MODULE"

  default_config &&
  # So linphone does not stomp on the ortp module files.
  cd oRTP        &&
  OPTS+=" --libdir=/usr/lib/$MODULE --includedir=/usr/include/$MODULE"
  default_config &&
  cd .. &&

# Something goes wonky when generating the Makefile as shown by this sedit.
  sedit "s:yes/:/:g" mediastreamer2/Makefile

  default_build

) > $C_FIFO 2>&1
