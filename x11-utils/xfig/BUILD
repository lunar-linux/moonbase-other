(
# changed p0 patch to p1 patch /elaine/  
  patch -p1 < $SCRIPT_DIRECTORY/xfig.3.2.3d.Imakefile.patch &&
  xmkmf                            &&
  make                             &&
  prepare_install                  &&
  make install                     &&
  make install.man

) > $C_FIFO 2>&1
