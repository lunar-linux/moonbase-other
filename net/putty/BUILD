(

  cd icons &&
  make &&
  for a in pterm putty puttygen ; do
  for s in 16 32 48 ; do
    install -Dm 644 $a-$s.png /usr/share/icons/hicolor/${s}x${s}/apps/$a.png
  done
  done &&
  cd ../unix &&
  default_build &&
  install -m644 $SCRIPT_DIRECTORY/*.desktop /usr/share/applications

) > $C_FIFO 2>&1
