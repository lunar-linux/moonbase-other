(

  if [ -f $SOURCE_CACHE/$SOURCE -a -f $SOURCE_CACHE/$SOURCE2 ] ; then
    # oh yes we do want to do this:
    prepare_install &&
    # Unpack and install both sources
    cd /usr/include &&
    rm -rf asm linux                        &&
    tar -xvjf $SOURCE_CACHE/$SOURCE         &&
    tar -xvjf $SOURCE_CACHE/$SOURCE2
  fi

) > $C_FIFO 2>&1
