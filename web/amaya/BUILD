(

  cd     Amaya                 &&
  mkdir  LINUX-ELF             &&
  cd     LINUX-ELF             &&
  ../configure  --prefix=/usr  \
                --enable-motif \
                --without-graphic-libs \
                $OPTS          &&
  make all                     &&
  prepare_install              &&
  make    install

) > $C_FIFO 2>&1
