(

  # Fixes compilation error:
  # Failed to set capabilities on file `/sbin/setcap' (Operation not supported)
  patch_it $SOURCE2 1 &&

  # no static libs
  sedit "s/all: \$(MINLIBNAME) \$(STALIBNAME)/all: \$(MINLIBNAME)/g" libcap/Makefile &&
  sedit "/install -m 0644 \$(STALIBNAME)/d"                          libcap/Makefile &&

  default_make

) > $C_FIFO 2>&1
