(

  prepare_install  &&

  # handle man pages separately, so they may not be copied again later
  if [ "`get_module_config MANPAGES`" = "y" ] ; then
    mkdir -p /usr/share/man/man{1,5}  &&

    cp -R texmf/doc/man/man1/*.1 /usr/share/man/man1/  &&
    cp -R texmf/doc/man/man5/*.5 /usr/share/man/man5/  &&

    rm -rf texmf/doc/man
  fi  &&

  if [ "`get_module_config DOCS`" = "n" ] ; then
    rm -rf texmf/doc  &&
    rm -rf texmf-dist/doc
  fi  &&

  # adjust TeX root path
  sedit "s:\(TEXMFROOT =\) .*$:\1 \$SELFAUTODIR/share:" texmf/web2c/texmf.cnf &&

  # this is the big cp (which would copy the man pages we removed before again)
  mkdir -p /usr/share                 &&
  cp -R texmf texmf-dist /usr/share/  &&

  # make symlinks to /usr/share/doc if needed
  if [ "`get_module_config DOCS`" = "y" ] ; then
    mkdir -p /usr/share/doc  &&

    ln -sf /usr/share/texmf/doc      /usr/share/doc/texmf  &&
    ln -sf /usr/share/texmf-dist/doc /usr/share/doc/texmf-dist
  fi

) > $C_FIFO 2>&1
