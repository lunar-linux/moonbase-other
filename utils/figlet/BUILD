(

  sedit "s:/usr/local:/usr:g" Makefile
  sedit "s/^CFLAGS *= *.*$/CFLAGS = $CXXFLAGS/" Makefile
  sedit "s:^DEFAULTFONTDIR[ ]*=[ ]*.*$:DEFAULTFONTDIR = /usr/share/figlet:g" Makefile

  # showfigfonts isnt chmod +x for some reason o_O
  chmod 0775 showfigfonts    &&
  mkdir -p /usr/share/figlet &&
  make all                   &&
  prepare_install            &&
  make install

) > $C_FIFO 2>&1
