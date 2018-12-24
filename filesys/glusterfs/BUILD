OPTS+=" --disable-static \
        --with-mountutildir=/usr/bin \
        --with-tmpfilesdir=/usr/lib/tmpfiles.d"

if module_installed systemd; then
  OPTS+=" --with-systemddir=/usr/lib/systemd/system"
fi

PYTHON=python2 LEXLIB=

default_build
