(

  if [ -e /usr/X11R6/lib/libX11.a ]; then
    ./configure --prefix=/usr $OPTS
  else
    ./configure --prefix=/usr \
                --target-list="i386-user i386-softmmu arm-user sparc-user ppc-user" \
                $OPTS
  fi &&
  default_make &&
  mkdir -p $DOCUMENT_DIRECTORY/$MODULE &&
  cp qemu-doc.html TODO $DOCUMENT_DIRECTORY/$MODULE/
  
) > $C_FIFO 2>&1
