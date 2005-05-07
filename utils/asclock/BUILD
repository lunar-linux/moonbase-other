(

  ln  -sf  themes/classic  default_theme
  xmkmf            &&
  prepare_install  &&
  make    install

) > $C_FIFO 2>&1  &&  (

  cp    -r  themes  /usr/share/asclock
  gzip  -9  <  asclock.man  >  asclock.1.gz
  cp  asclock.1.gz  /usr/man/man1

)
