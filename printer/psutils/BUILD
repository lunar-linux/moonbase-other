# Hide warnings about being unable to find its own config files
export KPATHSEA_WARNING=0 &&

# Only build psutils
OPTS+=" --disable-all-pkgs \
        --enable-psutils   \
        --enable-ipc       \
        --enable-shared    \
        --disable-static   \
        --enable-web-progs \
        --with-gs=gs       \
        --without-system-kpathsea \
        --disable-multiplatform   \
        --disable-native-texlive-build" &&

if ! module_installed libX11; then
  # Prevents risk of circular dependency: groff -> man -> libX11
  OPTS+=" --without-x"
fi &&

mkdir tex-build &&
cd tex-build &&
../configure --prefix=/usr $OPTS &&
default_make
