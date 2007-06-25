(
  ./waf configure --prefix=/usr -d optimized &&
  ./waf build &&
  prepare_install &&
  ./waf install
  
 ) > $C_FIFO 2>&1
