(
  # Apply configure patch
  patch_it $SOURCE2 0 &&

  cd $SOURCE_DIRECTORY  &&
  ./configure --prefix=/usr                      \
	      --enable-notify=no                 \
	      --enable-tkconfig=/usr/share/gcl   \
              $OPTS                             &&
  if ! module_installed emacs; then
  	sedit "s!EMACS_SITE_LISP=!EMACS_SITE_LISP=/usr/share/gcl!" makedefs &&
  	sedit "s!EMACS_SITE_LISP=!EMACS_SITE_LISP=/usr/share/gcl!" makedefc
  fi  &&
  default_make

) > $C_FIFO 2>&1
