(

  gcc  -o  burnmp3    burnmp3.c                   &&
  gcc  -o  c_getname  c_getname.c                 &&
  prepare_install                                 &&
  install  -m 700 c_getname 	/usr/bin          &&
  install  -m 700 burnmp3 	/usr/bin          &&
  install  -m 700 ripscript 	/usr/bin          &&
  mkdir	                        $DOCUMENT_DIRECTORY/$MODULE  &&
  install  -m 666 README        $DOCUMENT_DIRECTORY/$MODULE/README

) > $C_FIFO 2>&1
