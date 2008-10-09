(

  sedit 's/^ *CFLAGS *:= *\(.*\) *-O2 *\(.*\)/CFLAGS := \1 \2/' Makefile &&
  make             &&
  prepare_install  &&
  make  destdir=/usr           \
        sbindir=/sbin          \
        mandir=/usr/share/man  \
        install

) > $C_FIFO 2>&1
