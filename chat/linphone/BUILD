(

  # --enable-rsvp breaks the build, is no longer maintained, so don't 
  # use it.

  OPTS="--enable-truespeech --enable-video"

  default_config &&

# Something goes wonky when generating the Makefile as shown by this sedit.
  sedit "s:yes/:/:g" mediastreamer2/Makefile

  default_build

) > $C_FIFO 2>&1
