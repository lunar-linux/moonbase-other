(

  sedit "s/FIX\/man/FIX\/share\/man/" configure &&
  ./configure  --prefix=/usr                    \
               --installroot=/                  \
               --binmode=755                    \
               --daemonmode=755                 \
               --manmode=644                    &&
  make                                          &&
  prepare_install                               &&
  make    install

) > $C_FIFO 2>&1
