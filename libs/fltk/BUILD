(
  # fix bug concerning jpeg v9+
  sedit " 158 s/1/TRUE/; 336 s/1/TRUE/" src/Fl_JPEG_Image.cxx &&

  OPTS+=" --enable-largefile --enable-xinerama --enable-threads --enable-shared --enable-xft" &&

  default_build

) > $C_FIFO 2>&1
