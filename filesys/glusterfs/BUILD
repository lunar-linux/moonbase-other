OPTS+=" --disable-static \
        --without-tcmalloc \
        --with-mountutildir=/usr/bin \
        --with-tmpfilesdir=/usr/lib/tmpfiles.d \
        LEXLIB="

if module_installed systemd; then
  OPTS+=" --with-systemddir=/usr/lib/systemd/system"
fi &&

default_build
