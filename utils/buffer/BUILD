(
    make
    sedit "s,-Wall,-Wall -DSYS5," Makefile &&
    sedit "s,/usr/local/bin,/usr/bin," Makefile &&
    sedit "s,/usr/man,/usr/share/man," Makefile &&
    sedit "s,manl,man1," Makefile &&
    make
    make install
) > $C_FIFO
