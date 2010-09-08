(

  # Hide warnings about unable to find its own config files
  export KPATHSEA_WARNING=0  &&

  # Some options are from http://www.gentoo-portage.com/app-text/texlive-core
  # and http://repos.archlinux.org/wsvn/packages/texlive-bin/trunk/
  OPTS+=" --datadir=/usr/share --disable-multiplatform --disable-native-texlive-build --with-pdftex --with-tetex --with-pdfetex --with-system-zlib --with-system-freetype2 --with-system-libpng --with-gs=gs --enable-xetex --enable-ipc --enable-shared"  &&

  # luatex doesn't compile - anyway, latex & pdflatex are good enough :-)
  OPTS+=" --disable-luatex"  &&

  # clisp (required by xindy) doesn't compile - see DEPENDS
  OPTS+=" --disable-xindy"  &&

  default_build  &&

  # In version 20091107, texlive does not install wrappers like latex automatically, so copy these files explicitly.
  local i  &&
  for i in texk/texlive/* ; do
    if file "$i" | grep 'script text executable' > /dev/null 2>&1 ; then
      install -m755 "$i" /usr/bin/
    fi
  done  &&

  ln -sfn mf /usr/bin/mf-nowin  &&

  # Idea from http://repos.archlinux.org/wsvn/packages/texlive-bin/trunk/
  install -m644 $SOURCE_CACHE/$SOURCE2 /etc/fonts/conf.d/09-texlive-fonts.conf

) > $C_FIFO 2>&1
