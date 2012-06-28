(

# Else it puts it in /usr/usr/share/main1
  OPTS+=" --mandir=/share/man"

 ./bootstrap --prefix=/usr     \
    --docdir=/share/doc/cmake  \
    --system-libs              \
    $OPTS  &&

  default_make

) > $C_FIFO 2>&1
