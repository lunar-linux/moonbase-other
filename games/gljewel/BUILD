(

  sedit "s:data/bigfont.ppm:/usr/share/games/gljewel/bigfont.ppm:g" 	gljewel.c	&&
  sedit "s:\"data\":\"/usr/share/games/gljewel\":g" 			sound.c		&&

  make							&&
  prepare_install					&&

  mkdir -p /usr/share/games/gljewel			&&
  install -m 0755 gljewel /usr/games			&&
  install -m 0644 data/* /usr/share/games/gljewel

) > $C_FIFO 2>&1
