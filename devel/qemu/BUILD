(

  # Had to add the target-list, otherwise it builds i386 target which needs
  # static X11 libs, like libX11.a and libXext.a
  ./configure --prefix=/usr \
              --target-list="i386-user i386-softmmu arm-user sparc-user ppc-user" \
              $OPTS &&
  default_make &&
  mkdir -p $DOCUMENT_DIRECTORY/qemu &&
  cp qemu-doc.html TODO $DOCUMENT_DIRECTORY/qemu/
  
) > $C_FIFO 2>&1
