  mv -v texk/web2c/pdftexdir/pdftoepdf{-newpoppler,}.cc &&
  mv -v texk/web2c/pdftexdir/pdftosrc{-newpoppler,}.cc  &&

  # They warn an in source build is a very bad idea, so
  mkdir tex-build &&
  cd tex-build    &&
  ../configure --prefix=/usr $OPTS --without-system-freetype2 --without-system-gd&&
  default_make  &&

  # This does not get installed and causes the Can't locate TeXLive/TLUtils.pm after the BUILD
  mkdir -p /usr/share/tlpkg/TeXLive &&
  install -m644 $SOURCE_DIRECTORY/texk/tests/TeXLive/*.pm /usr/share/tlpkg/TeXLive &&

  # Idea from http://projects.archlinux.org/svntogit/packages.git/tree/texlive-bin/trunk/
  install -m644 $SOURCE_CACHE/$SOURCE2 /etc/fonts/conf.d/09-texlive-fonts.conf 
