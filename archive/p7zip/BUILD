(

  sedit 's:\/usr\/local:\/usr:' makefile install.sh &&

  if [ "$USE_MODS" == "y" ]; then
    make all3
  else
    make
  fi

  prepare_install &&
  ./install.sh

) > $C_FIFO 2>&1
