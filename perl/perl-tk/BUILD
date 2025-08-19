perl Makefile.PL &&
  sed -E 's|(^OPTIMIZE.*)|\1 -Wno-incompatible-pointer-types -Wno-implicit-int -std=gnu17|' -i Makefile
  make

prepare_install
make install
