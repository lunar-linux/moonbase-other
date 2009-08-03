(

  # Set default basedir to shared dir, rather than current dir
  sedit "s:fl_basedir = \".\":fl_basedir = \"/usr/share/games/vavoom\":" source/files.cpp &&

  # BINDIR and DATADIR are relative to CMAKE_INSTALL_PREFIX
  cmake . -DCMAKE_INSTALL_PREFIX="/usr" -DWITH_ALLEGRO=N -DBINDIR=games -DDATADIR="share/games/vavoom" -DENABLE_WRAPPERS=OFF &&

  default_build &&
  
  echo "Run with e.g.:  vavoom -opengl -openal -doom"

) > $C_FIFO 2>&1
