(

  emacs  -batch -q -f batch-byte-compile cc-*.el          &&
  makeinfo  cc-mode.texi                                  &&
  prepare_install                                         &&
  mkdir  -p  /usr/share/emacs/site-lisp/cc-mode           &&
  install  cc-*.elc  /usr/share/emacs/site-lisp/cc-mode/  &&
  install  *.info    /usr/share/info/                     

) > $C_FIFO 2>&1
