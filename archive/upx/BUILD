(
  export UCLDIR=/usr &&
  cd src &&
  sedit "s/CC = gcc/CC = g++/" Makefile &&
  make target=linux &&
  cd ../doc &&
  make &&
  prepare_install &&
  gzip -9 upx.1 && cp upx.1.gz /usr/share/man/man1 &&
  cp ../src/upx /usr/bin
  
) > $C_FIFO 2>&1

