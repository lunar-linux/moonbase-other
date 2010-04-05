(

  prepare_install             &&
  ROX-Filer/AppRun --compile  &&
  rm -fR ROX-Filer/src        &&
  rm -fR ROX-Filer/build      &&
  mkdir -p /usr/share/rox     &&
  cp -fR ROX-Filer/* /usr/share/rox/   &&
  gzip rox.1                           &&
  cp -f rox.1.gz /usr/share/man/man1/  &&
  # Create wrapper for AppRun 
  echo "#!/bin/sh" > rox
  echo "exec /usr/share/rox/AppRun \"\$@\"" >> rox
  echo "" >> rox

  install -D -m755 rox /usr/bin/rox


) > $C_FIFO 2>&1
