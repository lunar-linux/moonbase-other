(

  export DEBUG=-DNDEBUG

  default_build &&
  make    install-dev &&
  # tchan says: copying a bunch of libs that do NOT get installed by default (needed for xfsdump) but should be installed
  #   and I can't figure out how to fix their Makefiles!
  cp libdisk/libdisk.la /usr/libexec &&
  cp -P libdisk/.libs/libdisk.so* /usr/lib &&
  cp libxfs/libxfs.la /usr/libexec &&
  cp -P libxfs/.libs/libxfs.so* /usr/lib &&
  cp libxlog/libxlog.la /usr/libexec &&
  cp -P libxlog/.libs/libxlog.so* /usr/lib &&
  strip -S /usr/lib/libxfs.so.0.0.0 &&
  strip -S /usr/libexec/libxfs.a &&
  strip -S /usr/lib/libxlog.so.0.0.0 &&
  strip -S /usr/libexec/libxlog.a &&
  strip -S /usr/lib/libdisk.so.0.0.0 &&
  strip -S /usr/libexec/libdisk.a

) > $C_FIFO 2>&1
