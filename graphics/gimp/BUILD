(

  patch_it $SOURCE_CACHE/$SOURCE2 1      &&
  touch plug-ins/pygimp/pygimp-logo.png  &&
  export OPTS="$OPTS --without-sendmail"
  default_build

) > $C_FIFO 2>&1
