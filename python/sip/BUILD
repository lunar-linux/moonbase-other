python3 configure.py CFLAGS="$CFLAGS" LFLAGS="$LDFLAGS" &&
default_make

# Do Python2 build
if module_installed setuptools; then
  python configure.py CFLAGS="$CFLAGS" LFLAGS="$LDFLAGS" &&
  default_make
fi
