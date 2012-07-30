(

  # we want to build the module for the latest kernel, not the one running
  # this also handles X.Y.0 linux releases, where the linux version
  # is X.Y, but modules are stored in /lib/modules/X.Y.0 grrrhh
  KVERSION=$(readlink /usr/src/linux | cut -d'-' -f2 | sed -e '/^[0-9]*\.[0-9]*$/ s:^\(.*\)$:\1.0:')

  sedit "s:^\(KVERSION =\).*$:\1 ${KVERSION}:" Makefile &&

  make all &&
  prepare_install &&
  make install

) > $C_FIFO 2>&1
