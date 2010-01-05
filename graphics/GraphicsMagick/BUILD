(

# These sedits are temporary and should be fixed in the next release.
# Check to be sure.

  sedit "s:png_access_version:png_access_version_number:" coders/png.c &&
  sedit "s:flags(png_ptr):flags(ping):" coders/png.c  &&
  sedit "s:flags(png_ptr,:flags(ping,:" coders/png.c  &&

  OPTS="$OPTS --enable-shared --enable-symbol-prefix --with-modules" &&

  default_build

) > $C_FIFO 2>&1
