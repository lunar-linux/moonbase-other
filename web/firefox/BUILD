bad_flags "-fno-plt"

export MOZILLA_HOME=/usr/lib/$MODULE-$VERSION
export MOZILLA_OFFICIAL=1
export MOZ_MAKE_FILES=$MAKES
export MACH_BUILD_PYTHON_NATIVE_PACKAGE_SOURCE=system
export MOZ_NOSPAM=1
export MOZBUILD_STATE_PATH="$BUILD_DIRECTORY/mozbuild"
export MOZ_ENABLE_FULL_SYMBOLS=1
export LANG=C


# LTO needs more open files
ulimit -n 4096 &&

#./mach configure &&
./mach build &&
./mach buildsymbols &&

prepare_install &&

./mach install &&

install -Dm 644 {"$SCRIPT_DIRECTORY",/usr/share/applications}/firefox.desktop &&

for s in 16 22 24 32 48 256; do
  install -Dm 644 $SOURCE_DIRECTORY/browser/branding/official/default${s}.png \
    /usr/share/icons/hicolor/${s}x${s}/apps/firefox.png
done &&

# symlink plugins folder
mkdir -p /usr/lib/lunar/plugins &&
ln -sfn /usr/lib/firefox/browser /usr/lib/lunar/plugins
