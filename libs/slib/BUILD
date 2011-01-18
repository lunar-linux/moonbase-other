(

  sedit "s:SCHEME_LIBRARY_PATH=\$(DESTDIR):SCHEME_LIBRARY_PATH=:g" Makefile &&

  make prefix=/usr man1dir=/usr/share/man/man1 &&

  prepare_install &&

  mkdir -p /usr/share/slib &&
  cp *.scm *.init *.xyz *.txt *.dat *.ps /usr/share/slib/ &&
  install -m644 slib.info /usr/share/info/ &&
 
  mkdir -p /usr/share/guile/site/ &&
  ln -sfn /usr/share/slib /usr/share/guile/site/slib &&

  guile -c "(use-modules (ice-9 slib)) (require 'new-catalog)" "/"

) > $C_FIFO 2>&1
