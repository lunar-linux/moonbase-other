{

  OPTS="$OPTS --enable-shared=yes"   &&
  patch_it $SOURCE_CACHE/$SOURCE2 1  &&
  autoconf                           &&
  default_config                     &&
  make                               &&
  prepare_install                    &&
  make install-strip
  
} > $C_FIFO 2>&1

