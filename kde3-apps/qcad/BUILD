(
  qmake qcad.pro -o Makefile              &&
  sedit "s/-lqt /-lqt-mt /g" Makefile     &&
  make                                    &&
  prepare_install                         &&

  set -x
  mkdir -p /usr/share/qcad                &&
  cp -a cur       /usr/share/qcad         &&
  cp -a examples  /usr/share/qcad         &&
  cp -a fonts     /usr/share/qcad         &&
  cp -a hatches   /usr/share/qcad         &&
  cp -a libraries /usr/share/qcad         &&
  cp -a messages  /usr/share/qcad         &&
  install -g0 -o0 -m755 qcad /usr/bin     &&
  set +x

) > $C_FIFO 2>&1
