(

  # get rid of some annoying shell error messages
  sedit "/^RPMDIR/,/^$/d" Makefile &&

  default_make

) > $C_FIFO 2>&1
