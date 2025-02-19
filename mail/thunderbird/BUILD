ulimit -n 16384 &&

export MOZILLA_HOME=/usr/lib/$MODULE-$VERSION
export MOZILLA_OFFICIAL=1
export MOZ_MAKE_FILES=$MAKES
export MOZ_NOSPAM=1
export MOZBUILD_STATE_PATH="$SOURCE_DIRECTORY/mozbuild"
export LANG=C
export MACH_BUILD_PYTHON_NATIVE_PACKAGE_SOURCE=none 

#For the STL portion of the build
export CFLAGS="-fno-exceptions"
export CXXFLAGS="-fno-exceptions"

./mach build --verbose &&

cd ${MOZ_OBJDIR} &&
prepare_install  &&
MACH_BUILD_PYTHON_NATIVE_PACKAGE_SOURCE=none ../mach install  &&

# Now the .desktop file and icons
install -Dm 644 {"$SCRIPT_DIRECTORY",/usr/share/applications}/thunderbird.desktop &&

for s in 16 22 24 32 48 256 ; do
    install -Dm 644 dist/thunderbird/chrome/icons/default/default${s}.png /usr/share/icons/hicolor/${s}x${s}/apps/thunderbird.png
done &&

if [[ ! -f /usr/lib/thunderbird/defaults/pref/vendor-prefs.js ]] ;then
  install -Dm 644 $SCRIPT_DIRECTORY/vendor-prefs.js /usr/lib/thunderbird/defaults/pref/vendor-prefs.js
fi
