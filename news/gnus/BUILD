(

  ./configure  --with-emacs                                    \
               --infodir=/usr/share/info                       \
               --with-lispdir=/usr/share/emacs/site-lisp/gnus  &&
  default_make &&
  mkdir -p $DOCUMENT_DIRECTORY/gnus
  cp todo GNUS-NEWS $DOCUMENT_DIRECTORY/gnus

) > $C_FIFO 2>&1
