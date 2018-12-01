OPTS+=" --docdir=/usr/share/doc/gambit-c \
        --infodir=/usr/share/info \
        --libdir=/usr/lib/gambit-c \
        --enable-single-host \
        --enable-c-opt \
        --enable-shared \
        --enable-versioned-shared-libs"

if module_installed ghostscript; then
  # preserve the already installed gsc application
  mv /usr/bin/gsc /usr/bin/gsc.old
fi &&

default_build &&

# /usr/bin/gsc conflicts with ghostscript
mv /usr/bin/gsc /usr/bin/gambitc &&
ln -sf /usr/bin/gambitc /usr/bin/gsc-script

if module_installed ghostscript; then
  # restore the preserved gsc application
  mv /usr/bin/gsc.old /usr/bin/gsc
fi
