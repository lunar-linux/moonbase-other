(

  ./configure  --with-emacs=emacs                               \
               --with-gnus-dir=/usr/share/emacs/site-lisp/gnus  &&
  make  bbdb gnus                                               &&
  cd texinfo && make && cd ..                                   &&
  prepare_install                                               &&
  rm  -rf  /usr/share/emacs/site-lisp/bbdb                      &&
  mkdir   /usr/share/emacs/site-lisp/bbdb                       &&
  cp  -v  ./lisp/*.el /usr/share/emacs/site-lisp/bbdb           &&
  cp  -v  ./lisp/*.elc /usr/share/emacs/site-lisp/bbdb          &&
  cp  -v  ./texinfo/*.info /usr/share/info                      &&
# cp  -v  ./texinfo/*.info-* /usr/info                          &&
  install-info --info-dir=/usr/share/info /usr/share/info/bbdb.info

) > $C_FIFO 2>&1
