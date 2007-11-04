(
  ./waf --qtdir=/opt/lunar/qt/4/ --prefix=/usr/ configure   &&
  ./waf       &&
  prepare_install  &&
  ./waf install

) > $C_FIFO 2>&1
