(  

  patch_it $SOURCE2 1 &&
  patch_it $SOURCE3 1 &&

  make &&
  prepare_install &&
  
  mkdir -p $DOCUMENT_DIRECTORY/mmv &&
  install -m 0755 mmv /usr/bin/ &&
  install -m 0644 mmv.1 /usr/share/man/man1/ &&
  install -m 0644 ANNOUNCE READ.ME $DOCUMENT_DIRECTORY/mmv/ &&
  ln -sf /usr/bin/mmv mcp &&
  ln -sf /usr/bin/mmv mln &&
  ln -sf /usr/bin/mmv mad &&
  ln -sf /usr/share/man/man1/mmv.1 mcp.1 &&
  ln -sf /usr/share/man/man1/mmv.1 mln.1 &&
  ln -sf /usr/share/man/man1/mmv.1 mad.1
  
) >$C_FIFO 2>&1
