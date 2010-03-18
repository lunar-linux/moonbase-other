(
  sedit '/^CFLAGS/d;s;$(CFLAGS) -o;$(CFLAGS) $(LDFLAGS) -o;' Makefile &&
  make &&
  prepare_install &&
  install -m0755 transset-df /usr/bin/
) > $C_FIFO 2>&1
