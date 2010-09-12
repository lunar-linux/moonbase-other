(

  prepare_install  &&

  mkdir -p /usr/share/texmf-config/web2c /usr/share/doc/texmf/{texmf,texmf-dist,texmf-doc} /usr/share/man/man{1,5}  &&

  cp -R texmf/doc/man/man1/*.1 /usr/share/man/man1/  &&
  cp -R texmf/doc/man/man5/*.5 /usr/share/man/man5/  &&
  cp -R texmf/doc /usr/share/doc/texmf/texmf  &&
  cp -R texmf-dist/doc /usr/share/doc/texmf-dist/  &&
  cp -R texmf texmf-dist /usr/share/

) > $C_FIFO 2>&1
