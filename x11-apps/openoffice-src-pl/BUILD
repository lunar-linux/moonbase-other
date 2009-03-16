(

  for file in `ls *.rpm`; do rpmunpack $file; done &&
  rm -f *.rpm &&
  gunzip *.gz &&
  for file in `ls *.cpio`; do cpio -idvI $file; done &&
  rm -f *.cpio &&
  prepare_install &&
  cp -a opt/* /opt/lunar/openoffice-src &&
  install -m644 $SOURCE_CACHE/$SOURCE2 /opt/lunar/openoffice-src/openoffice.org3/share/extension/install/dict-pl.oxt &&
  rm -f $SOURCE_CACHE/$SOURCE2

) > $C_FIFO 2>&1
