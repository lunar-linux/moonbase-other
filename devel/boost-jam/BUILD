(

  ./build.sh &&
  prepare_install &&

  if [ "`arch`" = "x86_64" ]; then
   BJDIR="bin.linux"
  else
   BJDIR="bin.linuxx86"
  fi

  cd $BJDIR  &&
  install -m755 bjam /usr/bin &&
  install -m755 jam /usr/bin &&
  install -m755 mkjambase /usr/bin &&
  install -m755 yyacc /usr/bin

  # need to add doc ...
) > $C_FIFO 2>&1
