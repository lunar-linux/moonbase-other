(

  unset CC CXX                                      &&

  LDFLAGS=$(echo $LDFLAGS | sed "s/-z combreloc//") &&

  default_build
 
) > $C_FIFO 2>&1
