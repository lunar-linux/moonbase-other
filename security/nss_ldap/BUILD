(
  # Really old config.guess and .sub, lets update
  libtoolize -f &&
  sedit 's;^#bind_policy.*;bind_policy soft;' ldap.conf &&
  ./configure --libdir=/lib \
              --mandir=/usr/share/man \
              --with-ldap-lib=openldap \
              --enable-rfc2307bis \
              --enable-schema-mapping &&
  default_make

) > $C_FIFO 2>&1
