(

  ##all of this odd behavior is caused by Red Hat providing their package
  ##with fscking symlinks to the requisite pieces of automake!

  cd $BUILD_DIRECTORY/$MODULE-$VERSION                   &&
  rm -f COPYING INSTALL install-sh missing mkinstalldirs &&
  ln -sf /usr/share/automake/COPYING COPYING             &&
  ln -sf /usr/share/automake/INSTALL INSTALL             &&
  ln -sf /usr/share/automake/install-sh install-sh       &&
  ln -sf /usr/share/automake/missing missing             &&
  ln -sf /usr/share/automake/mkinstalldirs mkinstalldirs &&

  for FILE in `find . -name Makefile.in` ; do
    sedit "s/docdir = @docdir@/docdir = \/usr\/share\/doc/" $FILE
    sedit "s/sgml-common-@VERSION@\/html/sgml-common\/html/g" $FILE
  done

  default_build

) > $C_FIFO 2>&1
