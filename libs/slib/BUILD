(

  prepare_install  &&

  sedit "s:SCHEME_LIBRARY_PATH=\$(DESTDIR):SCHEME_LIBRARY_PATH=:g" \
        Makefile  &&

  make prefix=/usr/ man1dir=/usr/share/man/man1 install &&

  mkdir -p /usr/share/guile/site/ &&
  ln -sf /usr/lib/slib/* /usr/share/guile/site/ &&
  ln -sf /usr/lib/slib /usr/share/guile/slib &&

  guile -c "(use-modules (ice-9 slib)) (require 'new-catalog)" "/"

) > $C_FIFO 2>&1
