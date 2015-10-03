OPTS+=" --disable-static --disable-gtk-test --enable-xpdf-headers" &&

if in_depends poppler qt5; then
  OPTS+=" --disable-poppler-qt5"
fi &&

if in_depends poppler qt4; then
  . /etc/profile.d/qt4.rc
fi &&

default_build &&

# If in depends we will now build qt5 libs
if in_depends poppler qt5; then
  devoke_installwatch &&
  . /etc/profile.d/qt5.rc &&
  OPTS+=" --enable-poppler-qt5" &&
  default_build
fi &&

if [ "$SPLASH" == "y" ]; then
  ln -sf /usr/include/poppler/splash /usr/include/splash
fi
