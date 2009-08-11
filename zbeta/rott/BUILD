(

  # Automatically look in /usr/share/games/rott/
  patch_it $SOURCE_CACHE/$SOURCE3 0 &&

  cd rott &&
  
  # Compile with support for shareware only - see "#define SHAREWARE" in develop.h
  make EXTRACFLAGS="-Wno-pointer-sign" &&

  prepare_install &&
  
  mkdir -p /usr/games /usr/share/games/rott /usr/share/man/man6 &&
  cp -af rott /usr/games/ &&
  cd .. &&
  cp -af *.dmo huntbgin.* remote1.rts /usr/share/games/rott/ &&
  cp -af rott.6 /usr/share/man/man6/ &&

  # Stop INSTALL.EXE from being automatically treated as a doc
  rm -f INSTALL.EXE &&
  
  gather_docs *.txt README

) > $C_FIFO 2>&1
