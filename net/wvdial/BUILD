(

  sedit "s:prefix=/usr/local:prefix=/usr:g" config.defaults.mk &&

  ./configure                    &&
  default_make                   &&         
  strip /usr/bin/wvdial          &&
  strip /usr/bin/wvdialconf

) > $C_FIFO 2>&1

