(

  ##all of this odd behavior is caused by Red Hat providing their package
  ##with fscking symlinks to the requisite pieces of automake!

  cd $BUILD_DIRECTORY/$MODULE-$VERSION                      &&
  rm -f COPYING                                             &&
  ln -sf /usr/share/automake-1.6/COPYING COPYING             &&
  rm -f INSTALL                                             &&
  ln -sf /usr/share/automake-1.6/INSTALL INSTALL             &&
  rm -f install-sh                                          &&
  ln -sf /usr/share/automake-1.6/install-sh install-sh       &&
  rm -f missing                                             &&
  ln -sf /usr/share/automake-1.6/missing missing             &&
  rm -f mkinstalldirs                                       &&
  ln -sf /usr/share/automake-1.6/mkinstalldirs mkinstalldirs &&

  for FILE in `find . -name Makefile.in` ; do
    sedit "s/docdir = @docdir@/docdir = \/usr\/share\/doc/" $FILE
    sedit "s/sgml-common-@VERSION@\/html/sgml-common\/html/g" $FILE
  done

  default_build

) > $C_FIFO 2>&1
