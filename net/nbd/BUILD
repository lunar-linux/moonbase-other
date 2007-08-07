(

  echo -e "enum {\n  NBD_CMD_READ = 0,\n  NBD_CMD_WRITE = 1,\n  NBD_CMD_DISC = 2\n};" >> lfs.h
        sedit "s:docbook-to-man:docbook2man:g" Makefile.* *.sgml  &&
  OPTS=$OPTS" --enable-lfs --enable-syslog"  &&

  ./configure  --prefix=/usr  \
               $OPTS         &&

  patch_it $SOURCE_CACHE/$SOURCE2 1  &&

  default_make

) > $C_FIFO 2>&1
