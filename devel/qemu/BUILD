(
  unset CFLAGS

  OPTS+=" --extra-ldflags=-L/usr/X11R6/lib"
  for i in $TARGETLIST; do
    echo $i;
  done &&
  OPTS+=" --target-list=$(echo $TARGETLIST | sed s/\ /,/g)"

  ./configure --prefix=/usr \
               $OPTS         &&
                  
  default_make  &&

  # qemu-doc.html may not exist, but it will be ignored if that is the case
  gather_docs TODO qemu-doc.html

) > $C_FIFO 2>&1
