(  

  patch_it $SOURCE_CACHE/$SOURCE2 1 &&
  chmod 644 * &&
  gcc "-D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64" ${CFLAGS} ${LDFLAGS} mmv.c -o mmv &&
  prepare_install      &&
  cp mmv /usr/bin &&
  cp mmv.1 /usr/share/man/man1 &&
  mkdir -p $DOCUMENT_DIRECTORY/mmv &&
  cp ANNOUNCE READ.ME $DOCUMENT_DIRECTORY/mmv/ &&
  cd /usr/bin &&
  ln -sf mmv mcp &&
  ln -sf mmv mln &&
  ln -sf mmv mad &&
  cd /usr/share/man/man1 &&
  ln -sf mmv.1 mcp.1 &&
  ln -sf mmv.1 mln.1 &&
  ln -sf mmv.1 mad.1
  
) >$C_FIFO 2>&1
