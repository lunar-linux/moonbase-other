(

  cd ../scintilla/gtk
  make
  cd ../../scite/gtk
  make				       &&
  prepare_install                      &&
  make    install                      &&
  if [ -d /usr/src/scintilla ]; then
    rm -rf /usr/src/scintilla
  fi

) > $C_FIFO 2>&1
