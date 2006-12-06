(

  if gcc --version | grep -q 'gcc (GCC) 4' ; then
    patch_it $SOURCE2 1
    OPTS+=" --disable-gcc-check"
  fi

  if [ -e /usr/X11R6/lib/libX11.a ]; then
    ./configure --prefix=/usr $OPTS
  else
    ./configure --prefix=/usr \
                --target-list="i386-user i386-softmmu arm-user sparc-user ppc-user" \
                $OPTS
  fi &&
  default_make &&
  mkdir -p $DOCUMENT_DIRECTORY/$MODULE &&
  cp TODO $DOCUMENT_DIRECTORY/$MODULE/ &&
  if module_installed teTeX ; then
    cp qemu-doc.html $DOCUMENT_DIRECTORY/$MODULE/
  fi
  
) > $C_FIFO 2>&1
