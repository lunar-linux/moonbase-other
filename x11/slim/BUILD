(

  sedit 's/X11R6/X11/g' Makefile  &&

  if module_installed Linux-PAM; then
      export USE_PAM=1
  fi  &&

  default_make

) > $C_FIFO 2>&1
