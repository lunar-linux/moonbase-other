(

  # Set default basedir to shared dir, rather than current dir
  sedit "s:fl_basedir = \".\":fl_basedir = \"/usr/share/games/vavoom\":" source/files.cpp &&

  # BINDIR and DATADIR are relative to CMAKE_INSTALL_PREFIX
  cmake . -DCMAKE_INSTALL_PREFIX="/usr" -DBINDIR=games -DDATADIR="share/games/vavoom" -DENABLE_WRAPPERS=OFF $OPTS &&

  default_build

) > $C_FIFO 2>&1
