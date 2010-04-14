(

  # Options from:
  # http://repos.archlinux.org/viewvc.cgi/fontforge/repos/extra-i686/PKGBUILD?view=log
  OPTS+=" --with-freetype-src=/usr/include/freetype2 --disable-static --enable-double --enable-type3 --enable-devicetables"  &&

 # force the compile with -Os param. otherwise the compile might fail.
   OPTS+=" -Os"  &&

  ./configure --prefix=/usr  \
              $OPTS         &&

  sedit "s: s : :" fontforge/Makefile  &&

  default_make

) > $C_FIFO 2>&1
