(

  sedit 's:\/usr\/local:\/usr:' makefile install.sh &&

  # Fix doc permissions - "find... -exec chmod" in install.sh has no effect
  chmod 644 ChangeLog README &&
  find DOCS -type d -print0 | xargs -0 chmod 755 &&
  find DOCS -type f -print0 | xargs -0 chmod 644 &&

  if [ "$USE_MODS" == "y" ]; then
    make all3
  else
    make
  fi &&

  prepare_install &&
  ./install.sh

) > $C_FIFO 2>&1
