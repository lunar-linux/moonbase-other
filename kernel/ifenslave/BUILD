(
  cd /usr/src/linux/  &&

  prepare_install     &&

  # Build the files from here one.
  gcc -Wall -Wstrict-prototypes -O Documentation/networking/ifenslave.c \
      -o /sbin/ifenslave -I /usr/src/linux/include/

) > $C_FIFO 2>&1
