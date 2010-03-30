(

  patch_it $SOURCE_CACHE/$SOURCE2 1       &&
  sedit 's/usr\/local/usr/g' Makefile     &&
  sedit 's/usr\/ucb/usr\/bin/g' Makefile  &&

  default_make  &&

  ln -sf /usr/bin/mailx /usr/bin/mail

) > $C_FIFO 2>&1
