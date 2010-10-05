(

  # Options from:
  # http://repos.archlinux.org/viewvc.cgi/fontforge/repos/extra-i686/PKGBUILD?view=log
  OPTS+=" --with-freetype-src=/usr/include/freetype2 --disable-static --enable-double --enable-type3 --enable-devicetables"  &&

  patch_it $SOURCE_CACHE/$SOURCE2 1  &&

  ./configure --prefix=/usr  \
              $OPTS         &&

  sedit "s: s : :" fontforge/Makefile  &&

  default_make

) > $C_FIFO 2>&1
