(

  for file in `ls *.rpm`; do rpmunpack $file; done &&
  rm -f *.rpm &&
  gunzip *.gz &&
  for file in `ls *.cpio`; do cpio -idvI $file; done &&
  rm -f *.cpio &&
  prepare_install &&
  cp -a opt/* /opt/lunar/openoffice-src

) > $C_FIFO 2>&1
