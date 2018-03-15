# yasm causes xvidcore to create some faulty assembly that is not
# -fPIC friendly, so just changing the detection to use nasm. No
# x86 box available, so making this a x86_64 thing.
if [ `arch` == "x86_64" ]; then
   if module_installed nasm; then
      export ac_yasm="nasm"
   fi
fi &&

export CFLAGS="$CFLAGS -fPIC" &&

cd build/generic &&

./configure --prefix=/usr             \
            --infodir=/usr/share/info \
            --mandir=/usr/share/man   \
            $OPTS                    &&

default_make &&

# Some apps look for a .so notably transcode, so lets make one.
# Seems its .so name does not follow the major version name.
# If anyone has a better way to do this, please adjust.
ln -sf /usr/lib/libxvidcore.so.4.3 /usr/lib/libxvidcore.so
