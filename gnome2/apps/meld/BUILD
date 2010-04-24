(

  # prevent an error with the latest gettext
  sedit 's:msgfmt -c:msgfmt:' po/GNUmakefile  &&

  make prefix=/usr  &&
  prepare_install   &&
  make prefix=/usr install

) > $C_FIFO 2>&1
