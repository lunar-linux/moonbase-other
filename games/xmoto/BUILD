(

  OPTS+=" --with-internal-xdg=1 --enable-threads=posix --with-renderer-sdlGfx=0 --with-renderer-openGl=1 --disable-sdltest"  &&

  # For compatibility with libpng 1.4
  # From http://www.gentoo-portage.com/games-sports/xmoto
  sedit "s:png_set_gray_1_2_4_to_8:png_set_expand_gray_1_2_4_to_8:" src/image/tim_png.cpp  &&

  default_game_build  &&

  # Desktop menu entry & icon
  install -D -m644 extra/xmoto.desktop /usr/share/applications/xmoto.desktop  &&
  install -D -m644 extra/xmoto.xpm     /usr/share/pixmaps/xmoto.xpm

) > $C_FIFO 2>&1
