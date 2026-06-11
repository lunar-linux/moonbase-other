unset LDFLAGS
# Taken from LFS folks
sed -e '1012 s/stderr=devnull/stderr=subprocess.DEVNULL/' \
    -e '1013 s/OSError/(OSError, subprocess.CalledProcessError)/' \
    -i third_party/python/distro/distro.py &&

export CC=clang 
export CXX=clang++
export AR=llvm-ar
export NM=llvm-nm
export RANLIB=llvm-ranlib

./mach configure &&
./mach build --verbose &&

prepare_install  &&
./mach install &&

# Now the .desktop file and icons
install -Dm 644 {"$SCRIPT_DIRECTORY",/usr/share/applications}/seamonkey.desktop &&

for s in 16 22 24 32 48 64 128 256 ; do
    install -Dm 644 $SOURCE_DIRECTORY/browser/branding/official/default${s}.png /usr/share/icons/hicolor/${s}x${s}/apps/seamonkey.png
done &&

if [ -x /usr/bin/gtk-update-icon-cache -a -f /usr/share/icons/hicolor/index.theme ]; then
    gtk-update-icon-cache -f /usr/share/icons/hicolor
fi
