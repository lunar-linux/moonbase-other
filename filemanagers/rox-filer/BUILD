(

  prepare_install             &&
  ROX-Filer/AppRun --compile  &&
  rm -fR ROX-Filer/src        &&
  rm -fR ROX-Filer/build      &&
  mkdir -p /usr/share/rox     &&
  cp -fR ROX-Filer/* /usr/share/rox/   &&
  gzip rox.1                           &&
  cp -f rox.1.gz /usr/share/man/man1/  &&
  ln -sf /usr/share/rox/rox /usr/bin/ROX-Filer

) > $C_FIFO 2>&1
