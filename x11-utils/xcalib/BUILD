(

  sedit "s:local/bin/:bin/:g" Makefile
  sedit "s:0644:755:" Makefile

  default_make

  if [ ! -d /usr/share/color/icc ]; then
      mkdir -p /usr/share/color/icc
  fi &&

  cp *.icc /usr/share/color/icc/

) > $C_FIFO 2>&1
