(

  sedit "s:usr/local:usr:" Makefile     &&
  sedit "s:man/:share/man/:" Makefile   &&
  sedit "s:info/:share/info/:" Makefile &&
  prepare_install                       &&
  make infoz                            &&
  make install                          &&
  mkdir -p /usr/share/guile/1.6/slib    &&
  rm -fr old.libraries                  &&
  cp * /usr/share/guile/1.6/slib/       &&
  guile -c "(use-modules (ice-9 slib)) (require 'new-catalog)" "/"

) > $C_FIFO 2>&1
