{

  OPTS="$OPTS --enable-shared=yes"   &&
  autoconf                           &&
  default_config                     &&
  make                               &&
  prepare_install                    &&
  make install-strip
  
} > $C_FIFO 2>&1

