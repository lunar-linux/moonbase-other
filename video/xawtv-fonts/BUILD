(
  
  OLD_DISPLAY=$DISPLAY
  unset DISPLAY

  make

  install *.pcf.gz -m 444 /usr/X11R6/lib/X11/fonts/misc/

  DISPLAY=$OLD_DISPLAY
  unset OLD_DISPLAY

  true

) > $C_FIFO 2>&1
