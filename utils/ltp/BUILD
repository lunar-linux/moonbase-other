(

  unset CFLAGS CCFLAGS
  make &&
  prepare_install &&
  mkdir -p /usr/share/ltp &&
  cp -av include lib pan testcases tools runtest /usr/share/ltp/ &&
  cp IDcheck.sh ltpmenu runltp ver_linux /usr/share/ltp/ &&
  cd /usr/share/ltp &&
  echo "true" > IDcheck.sh &&
  yes n | make -f $SOURCE_DIRECTORY/Makefile install

) > $C_FIFO 2>&1
