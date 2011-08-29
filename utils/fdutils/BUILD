(

  if  !  module_installed  texinfo;  then
    sedit  "s/compile comp-doc/compile/"     Makefile.in
    sedit  "s/install-prog install-doc/install-prog/"  Makefile.in
  fi &&

  if  !  module_installed  texlive ;  then
    sedit "/dvi/d" Makefile.in
  fi &&

  default_build

) > $C_FIFO 2>&1
