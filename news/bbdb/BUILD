(

  ./configure  --with-emacs=emacs                               \
               --with-gnus-dir=/usr/share/emacs/site-lisp/gnus  &&
  make  bbdb gnus                                               &&
  prepare_install                                               &&
  rm  -rf  /usr/share/emacs/site-lisp/bbdb                      &&
  mkdir   /usr/share/emacs/site-lisp/bbdb                       &&
  cp  -v  ./lisp/*.el /usr/share/emacs/site-lisp/bbdb           &&
  cp  -v  ./lisp/*.elc /usr/share/emacs/site-lisp/bbdb          &&
  cp  -v  ./texinfo/*.info /usr/info                            &&
  cp  -v  ./texinfo/*.info-* /usr/info                          &&
  install-info --info-dir=/usr/info /usr/info/bbdb.info

) > $C_FIFO 2>&1
