(

  prepare_install                     &&
  mkdir -p /usr/share/guile/1.8/slib  &&
  rm -fr old.libraries                &&
  cp * /usr/share/guile/1.8/slib/     &&
  guile -c "(use-modules (ice-9 slib)) (require 'new-catalog)" "/"

) > $C_FIFO 2>&1
