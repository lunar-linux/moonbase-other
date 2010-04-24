(

  export CFLAGS="$CFLAGS -fPIC"

  cd build/generic

  ./configure  --prefix=/usr              \
               --infodir=/usr/share/info  \
               --mandir=/usr/share/man    \
               $OPTS                     &&

  default_make &&

# Some apps look for a .so notably transcode, so lets make one. Seems its .so name does not follow the major
# version name. If anyone has a better way to do this, please adjust.
  ln -sf /usr/lib/libxvidcore.so.4.2 /usr/lib/libxvidcore.so
  

) > $C_FIFO 2>&1
