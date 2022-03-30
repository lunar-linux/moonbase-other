. /etc/profile.d/qt5.rc &&

OPTS+=" -DCMAKE_INSTALL_PREFIX=/usr \
        -DENABLE_DYNAMIC_LINKING=ON"

HOSTS+="none"

if in_depends gmic gimp; then
HOSTS+="gimp"
fi &&
if in_depends gmic krita; then
HOSTS+="krita"
fi &&
if in_depends gmic digikam; then
HOSTS+="digikam"
fi &&

cd $SOURCE_DIRECTORY/gmic-qt &&

for i in $HOSTS
do
   cmake -B build-$i -DGMIC_QT_HOST=$i $OPTS &&
   cmake --build build-$i;
done

prepare_install &&

for i in $HOSTS
do
cmake --install $SOURCE_DIRECTORY/gmic-qt/build-$i &&
install -Dm644 $SOURCE_DIRECTORY/gmic-qt/gmic_qt.desktop /usr/share/applications/ &&
install -Dm644 $SOURCE_DIRECTORY/gmic-qt/icons/application/gmic_qt.svg /usr/share/pixmaps/;
done
