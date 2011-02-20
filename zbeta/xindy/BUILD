(

  # Patch from http://scmweb.sourcemage.org/?p=smgl/grimoire.git;a=tree;f=latex/texlive
  # Use Linux-sensible directories
  patch_it $SOURCE_CACHE/$SOURCE2 0  &&

  # Fonts dir
  sedit 's:^\(OSFONTDIR =\).*:\1 /usr/share/fonts:' texk/kpathsea/texmf.cnf  &&

  # Use /usr/share/texmf and /usr/share/texmf-dist
  find -name Makefile\* -print0 | xargs -0 sed -i -e "s:\${prefix}/texmf:\${datadir}/texmf:"  &&
  find -name configure -print0 | xargs -0 sed -i -e "s:\${prefix}/texmf:\${datadir}/texmf:"  &&
  find -name \*.info -print0 | xargs -0 sed -i -e "s:/usr/local:/usr:"  &&
  find -name \*.texi -print0 | xargs -0 sed -i -e "s:/usr/local:/usr:"  &&
  find -name \*.synctex -print0 | xargs -0 sed -i -e "s:/usr/local:/usr:"  &&
  sed -i -e "s:\$(DESTDIR)\$(texconfigdir):/usr/share/texmf/texconfig:g" -e "s:\$(DESTDIR)\$(texconfdir):/usr/share:g" texk/tetex/Makefile.*  &&

  # xindy scripts
  sedit "s:texmf/scripts:share/texmf/scripts:" utils/xindy/xindy/user-commands/Makefile.in  &&

  # Only build xindy
  OPTS+=" --datadir=/usr/share --disable-all-pkgs --enable-xindy --enable-ipc --enable-shared --enable-static=no --disable-multiplatform --disable-native-texlive-build --with-gs=gs"  &&

  default_build

) > $C_FIFO 2>&1
