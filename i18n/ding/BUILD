(

  prepare_install &&
  
  #
  # NOTE: BUILD completely overrides the ding install.sh script
  #
  
  # Install ding binary
  install -m 755 -t $DEFAULT_PREFIX/bin ding &&
  
  # Install de-en translation dictionary
  install -m 644 -t $DEFAULT_PREFIX/share/dict de-en.txt

) > $C_FIFO 2>&1
