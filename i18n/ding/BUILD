(
  prepare_install &&

  #
  # NOTE: BUILD completely overrides the ding install.sh script
  #

  # Install ding binary
  install -m 755 -t /usr/bin ding &&

  # Install de-en translation dictionary
  install -m 644 -t /usr/share/dict de-en.txt &&

  # Install icon
  install -m 644 -t /usr/share/pixmaps ding.png &&

  # Install desktop file
  install -m 644 -t /usr/share/applications ding.desktop

) > $C_FIFO 2>&1
