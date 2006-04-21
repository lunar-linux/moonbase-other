(
  # Apply desktop file patch to fix the Exec value
  patch_it $SOURCE2 0 &&

  prepare_install &&
  
  #
  # NOTE: BUILD completely overrides the ding install.sh script
  #
  
  # Install ding binary
  install -m 755 -t $DEFAULT_PREFIX/bin ding &&
  
  # Install de-en translation dictionary
  install -m 644 -t $DEFAULT_PREFIX/share/dict de-en.txt &&

  # Install icon
  install -m 644 -t $DEFAULT_PREFIX/share/pixmaps ding.png &&

  # Install desktop file
  install -m 644 -t $DEFAULT_PREFIX/share/applications ding.desktop

) > $C_FIFO 2>&1
