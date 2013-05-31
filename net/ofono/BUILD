
  sedit "27i #include <unistd.h>" src/storage.h &&

  #Fix builds with newer glib
  grep -lre '<glib/gtypes.h>' "./" | while read i; do
       sed -ie 's:glib/gtypes.h:glib.h:' "${i}" || die "Unable to sed \"$i\""
  done

  default_build
