(
set +x
	sedit "s/PREFIX=\/usr\/local/PREFIX=\/usr/" Makefile &&
	sedit "s/^CFLAGS = -O2 -s/CFLAGS = $CFLAGS/" Makefile &&
	make                              &&
	prepare_install                   &&
	make    install

) > $C_FIFO 2>&1

