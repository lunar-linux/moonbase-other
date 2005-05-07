(

  ./configure  --prefix=/usr                           \
               --datadir=/usr/share                    \
	       --mandir=/usr/share/man                 \
	       --infodir=/usr/share/info               &&
  sedit  "s/src doc contrib/src contrib/"  Makefile    &&
  sedit "s/\/usr\/bin\/awk/\/bin\/awk/" doc/manpager   &&
  sedit "s/\/usr\/bin\/awk/\/bin\/awk/" doc/infofilter &&
  sedit "s/\/usr\/bin\/awk/\/bin\/awk/" doc/mktxt      &&

# doc section
  cd doc                                               &&
  make                                                 &&
  prepare_install                                      &&
  make install
  
) > $C_FIFO 2>&1
