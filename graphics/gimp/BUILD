(

  if [ "$GIMPSHOP" == "y" ]; then
    patch_it $SOURCE2 1
  fi

  touch plug-ins/pygimp/pygimp-logo.png &&
  export OPTS="$OPTS --without-sendmail"
  default_build
) > $C_FIFO 2>&1
