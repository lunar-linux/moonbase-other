(
  sedit "s/OGLDIR=\/usr/OGLDIR=\/usr\/X11R6/" c_src/Makefile &&
  cp $SCRIPT_DIRECTORY/Makefile c_src/Makefile &&
  make  &&
  mkdir -p /usr/lib/esdl && 
  cp -R * /usr/lib/esdl

) > $C_FIFO 2>&1
