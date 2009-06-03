(

  export PTLIB_CONFIG=/usr/bin/ptlib-config
  export PWLIBDIR=/usr/share/ptlib
  export PTLIBDIR=/usr/share/ptlib

  default_config &&
  
  sedit "s:r.so:.so:" Makefile
  sedit "s|OH323_FILE).1.21.0|OH323_FILE).1.21-beta0|g" Makefile
  default_make

) > $C_FIFO 2>&1
