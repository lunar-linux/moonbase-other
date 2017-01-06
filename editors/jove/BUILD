make SYSDEFS="-DSYSVR4 -D_XOPEN_SOURCE=500" TERMCAPLIB=-lncurses \
     JOVEHOME=/usr SHARDIR=/usr/share/jove TMPDIR=/var/tmp \
     RECDIR=/var/tmp/jove.preserve DFLTSHELL=/bin/bash &&

prepare_install &&

mkdir -p /usr/{bin,lib/jove,share/{jove,man/man1}} &&
make JOVEHOME=/usr MANDIR=/usr/share/man/man1 install
