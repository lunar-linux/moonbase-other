(

  sedit "s:^\#define WIN9X 1$::" ss.cpp                         &&
  sedit "s:^\/\*\#define LINUX 1\*\/:\#define LINUX 1:" ss.cpp  &&

  make all        &&
  prepare_install &&

  install -D -m0755 ss     $MODULE_PREFIX/bin/$MODULE        &&
  install -D -m0755 bitgen $MODULE_PREFIX/bin/$MODULE-bitgen &&
  install -D -m0755 mod10  $MODULE_PREFIX/bin/$MODULE-mod10  &&

  chmod 644 *.txt                &&
  chmod 644 dl-iin.csv           &&
  chmod 644 samples/*.txt        &&
  chmod 644 hardware/wiring.png  &&
  gather_docs cards.txt visa-pre.txt hardware/wiring.png dl-iin.csv

) > $C_FIFO 2>&1
