(

  # Fix "division by 0" startup error with gcc 4.4
  patch_it $SOURCE_CACHE/$SOURCE2 1 &&

  # Set default basedir to shared dir, rather than current dir
  sedit "s:fl_basedir = \".\":fl_basedir = \"/usr/share/games/vavoom\":" source/files.cpp &&

  # BINDIR and DATADIR are relative to CMAKE_INSTALL_PREFIX
  cmake . -DCMAKE_INSTALL_PREFIX="/usr" -DWITH_ALLEGRO=N -DBINDIR=games -DDATADIR="share/games/vavoom" -DENABLE_WRAPPERS=OFF &&

  default_build

) > $C_FIFO 2>&1
