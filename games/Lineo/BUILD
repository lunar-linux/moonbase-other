(
  # install to correct folders
  sedit 's:/usr/games/lineo/datas:usr/share/games/lineo/:' Makefile &&
  sedit 's:/usr/bin:/usr/games:' Makefile &&

  sedit 's:-g::g' Makefile &&
  # use the system flags and patch DATA_PATH
  sedit "s:\(CXXFLAGS =[^)]*))\):\1 ${CXXFLAGS} -DDATA_PATH=\\\\\"\$(DATA_PATH)\\\\\":" Makefile &&

  sedit 's:=DATA_PATH:=(string)(DATA_PATH):' src/Lineo.cpp &&

  make &&

  prepare_install &&

  make install

) > $C_FIFO 2>&1
