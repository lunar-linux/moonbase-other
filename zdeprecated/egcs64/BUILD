(
  unset HOST BUILD
  patch_it $SOURCE_CACHE/$SOURCE2 1 &&
  mk_source_dir /usr/src/$MODULE-$VERSION-BUILD && 
  cd /usr/src/$MODULE-$VERSION-BUILD &&
  ../$MODULE-$VERSION/configure  \
               --enable-languages=c          \
               --prefix=/opt/lunar/egcs64    \
               --disable-nls                 \
               --enable-threads              \
               --enable-version-specific-runtime-libs \
               --enable-shared               \
               sparc64-unknown-linux-gnu     &&
  make CFLAGS="-DHOST_WIDE_INT=long\ long -DHOST_BITS_PER_WIDE_INT=64" cross &&
  prepare_install                            && 
  make install                               &&
  cd /opt/lunar/egcs64 &&
  rm -rf info man &&
  cd bin &&
  mv sparc64-unknown-linux-gnu-gcc egcs-2.92.11 &&
  ln -s egcs-2.92.11 sparc64-unknown-linux-gnu-gcc &&
  ln -s egcs-2.92.11 sparc64-unknown-linux-gcc &&
  ln -s egcs-2.92.11 sparc64-linux-gcc &&
  ln -s egcs-2.92.11 gcc64 &&
  ln -s egcs-2.92.11 egcs64 &&
  ln -s egcs-2.92.11 cc64 &&
  cd /usr/src &&
  rm -rf $MODULE-$VERSION-BUILD

) > $C_FIFO 2>&1

