(

  # Debian is not the law, suckers!
  #sedit 's/libSoundTouch/soundtouch-1.0/g' SConstruct &&
  # Now its diddle with the .pc file
  sedit 's/soundtouch-1.0/soundtouch/g' SConstruct &&

  scons PREFIX=/usr ARCH="$CFLAGS" SYSLIBS=1  &&
  prepare_install  &&
  scons install

) > $C_FIFO 2>&1
