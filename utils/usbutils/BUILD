(

  mquery KERNEL24 "Are you using one of the 2.4 kernels?" y
  if [ "$KERNEL24" == "y" ] ; then
  export OPTS="$OPTS --enable-usbmodules"
  fi

  ./configure  --prefix=/usr     \
               $OPTS            &&

  default_make

) > $C_FIFO 2>&1
