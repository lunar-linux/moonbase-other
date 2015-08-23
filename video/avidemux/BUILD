sedit 's|#include "ADM_files.h"|#include "ADM_files.h"\n#include "ADM_toolkitGtk.h"|'  avidemux/gtk/ADM_userInterfaces/ui_support.cpp

sedit "s:avidemux2_gtk:avidemux3_qt4:"          avidemux2.desktop &&
sedit "s:Icon=avidemux:Icon=avidemux_icon.png:" avidemux2.desktop &&

B_OPT=" --with-core --with-cli" &&

#if in_depends $MODULE gtk+-3; then
#  B_OPT+=" --with-gtk"
#fi &&

if in_depends $MODULE qt4; then
  B_OPT+=" --with-qt4"
fi &&

if in_depends $MODULEs qt5; then
  B_OPT+=" --enable-qt5"
fi &&

B_OPT+=" --with-plugins" &&

echo "***> Build options: "$B_OPT &&

sh bootStrap.bash $B_OPT &&

cd addons/fontGen &&
cmake . &&
make &&

cd ../tsscan &&
make &&

cd $SOURCE_DIRECTORY &&
prepare_install &&

cp -R install/usr/bin/* /usr/bin/ &&
cp -R install/usr/include/* /usr/include/ &&
cp -R install/usr/lib/* /usr/lib/ &&
cp -R install/usr/share/* /usr/share/ &&

install addons/ad2_vcdimager/ad2_vcdimager /usr/bin/ &&
install addons/aviscan/aviscan /usr/bin/ &&
install addons/tsscan/tsscan /usr/bin/ &&
install $SOURCE_DIRECTORY/avidemux2.desktop /usr/share/applications/ &&
install $SOURCE_DIRECTORY/avidemux_icon.png /usr/share/icons/
