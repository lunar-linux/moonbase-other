# first ENTER to begin
IACT="\n" &&

# platform
IACT="${IACT}gnu\n" &&

# build type (regular or merge)
IACT="${IACT}regular\n" &&

# shared linked
IACT="${IACT}shared\n" &&

# build static libs, too
IACT="${IACT}y\n" &&

# just ENTER on inttypes.h
IACT="${IACT}\n" &&

# Use sse
if ! grep -q sse2 /proc/cpuinfo; then
  IACT="${IACT}n\n"
else
  IACT="${IACT}y\n"
fi &&

# optional dependency %JPEG
if [[ $OPTS = *USE_JPEG* ]]; then
  IACT="${IACT}libjpeg.so\n"
  IACT="${IACT}default\n"
else
  IACT="${IACT}none\n"
fi &&

# optional dependency tiff
if [[ $OPTS = *USE_TIFF* ]]; then
  IACT="${IACT}libtiff.so\n"
  IACT="${IACT}default\n"
else
  IACT="${IACT}none\n"
fi &&

# optional dependency zlib
if [[ $OPTS = *USE_ZLIB* ]]; then
  IACT="${IACT}libz.so\n"
  IACT="${IACT}default\n"
else
  IACT="${IACT}none\n"
fi &&

# no svgalib
IACT="${IACT}none\n" &&

# optional dependency libX11
if [[ $OPTS = *USE_X11* ]]; then
  IACT="${IACT}/usr/X11R6/lib/libX11.so\n"
  IACT="${IACT}default\n"
else
  IACT="${IACT}none\n"
fi &&

# last newline for accepting default doc URL
IACT="{$IACT}$(pwd -P)/doc\n" &&

# FINALLY pipe the interactive string to configure
echo -e "${IACT}" | ./configure &&

# [ `arch` == "x86_64" ] && echo 'CFLAGS_SHLIB = -fPIC' >> config.mk &&

make &&
make package PKGDIR=/tmp/netpbm &&
prepare_install &&

echo -e "
/usr
/usr/bin
/usr/lib
N
/usr/lib
/usr/include
/usr/share/man
N
" | ./installnetpbm pkgdir=/tmp/newnetpbm &&

# Fix documentation layout and permissions
mv doc/* . &&
rmdir doc  &&
chmod 644 INSTALL README* USERDOC &&
gather_docs USERDOC &&

rm -rf /tmp/netpbm
