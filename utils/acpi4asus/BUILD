(

  sedit 's:/usr/local:/usr:g' Makefile */Makefile &&
  PREFIX=/usr make -C asus_acpid &&
  prepare_install &&
  PREFIX=/usr make -C asus_acpid install

) > $C_FIFO 2>&1
