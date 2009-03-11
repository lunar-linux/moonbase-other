(

  unset CFLAGS

  OPTS+=" --extra-ldflags=-L/usr/X11R6/lib"
  if [ ! -e /usr/X11R6/lib/libX11.a ]; then
    OPTS+=" --target-list=i386-user,i386-softmmu,arm-user,sparc-user,ppc-user"
  fi

  ./configure --prefix=/usr \
               $OPTS         &&
                  
  default_make  &&

  # qemu-doc.html may not exist, but it will be ignored if that is the case
  gather_docs TODO qemu-doc.html

) > $C_FIFO 2>&1
