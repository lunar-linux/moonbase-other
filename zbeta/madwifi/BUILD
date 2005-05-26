(

  default_make	&&
  cd tools/	&&
  make		&&

  for file in "80211debug 80211stats athchans athctrl athdebug athkey athstats";do
    install -m0755 $file /usr/bin/
  done

) > $C_FIFO 2>&1
