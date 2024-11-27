export MOZILLA_HOME=/usr/lib/$MODULE
export MOZILLA_OFFICIAL=1
export MOZ_MAKE_FILES=$MAKES
export MOZ_NOSPAM=1
export MOZBUILD_STATE_PATH="$SOURCE_DIRECTORY/mozbuild"
#export LANG=C
export MACH_BUILD_PYTHON_NATIVE_PACKAGE_SOURCE=pip

CFLAGS="${CFLAGS/_FORTIFY_SOURCE=3/_FORTIFY_SOURCE=2}"
CXXFLAGS="${CXXFLAGS/_FORTIFY_SOURCE=3/_FORTIFY_SOURCE=2}"
CFLAGS="${CFLAGS/-fexceptions/}"
CXXFLAGS="${CXXFLAGS/-fexceptions/}"

# LTO needs more open files
ulimit -n 8192 &&

./mach configure || ./mach configure &&
./mach build --verbose &&

prepare_install &&

./mach install &&

install -Dm 644 {"$SCRIPT_DIRECTORY",/usr/share/applications}/firefox.desktop &&

for s in 16 22 24 32 48 64 128 256; do
  install -Dm 644 $SOURCE_DIRECTORY/browser/branding/official/default${s}.png \
    /usr/share/icons/hicolor/${s}x${s}/apps/firefox.png
done &&

# symlink plugins folder
mkdir -p /usr/lib/lunar/plugins &&
ln -sfn /usr/lib/firefox/browser /usr/lib/lunar/plugins/
