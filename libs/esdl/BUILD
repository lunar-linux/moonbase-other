(

#  sedit "s/OGLDIR=\/usr/OGLDIR=\/usr\/X11R6/" c_src/Makefile &&
  sedit "s:OGLDIR  = /usr:OGLDIR  = /usr/X11R6:g" c_src/Makefile &&
#  cp $SCRIPT_DIRECTORY/Makefile c_src/Makefile &&
  make  &&
  prepare_install &&
#  make install
  mkdir -p /usr/lib/esdl && 
  cp -R * /usr/lib/esdl

) > $C_FIFO 2>&1
