THEME_DIRECTORY="/usr/share/themes/"

THEME_ENGINES="Candido-Engine \
               Candido-Engine-Less \
               Candido-Engine-Squared"

prepare_install &&

for ENGINE in $THEME_ENGINES; do
  cp -R $BUILD_DIRECTORY/$ENGINE $THEME_DIRECTORY &&
  rm -r $BUILD_DIRECTORY/$ENGINE
done
