(

  # Disabling readline, so don't need to install ancient termcap,
  # which conflicts with ncurses over ownership of /usr/include/termcap.h
  OPTS+=" --disable-readline --target=sdl" &&

  cd src &&
  default_build &&

  mkdir -p /usr/share/$MODULE &&
  install -m644 -t /usr/share/$MODULE/ ../*.{ROM,XFD,ATR} &&
  install -m644 -D ../XF25.DOC /usr/share/doc/$MODULE/xf25.txt

) > $C_FIFO 2>&1
