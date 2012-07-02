(
  unset CFLAGS

  OPTS+=" --extra-ldflags=-L/usr/X11R6/lib"
  OPTS+=" --target-list=$(echo $TARGETLIST | sed s/\ /,/g)"

  ./configure --prefix=/usr      \
              --sysconfdir=/etc  \
               $OPTS             &&

  default_make  &&

  # qemu-doc.html may not exist, but it will be ignored if that is the case
  gather_docs TODO qemu-doc.html

) > $C_FIFO 2>&1
