(

  echo -e "enum {\n  NBD_CMD_READ = 0,\n  NBD_CMD_WRITE = 1,\n  NBD_CMD_DISC = 2\n};" >> lfs.h
	sedit "s:docbook-to-man:docbook2man:g" Makefile.* *.sgml &&
  OPTS="--enable-lfs --enable-syslog" &&
	default_build

) > $C_FIFO 2>&1
