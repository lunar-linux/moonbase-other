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

cd $SOURCE_DIRECTORY/install &&
prepare_install &&

cp -R usr/bin/* /usr/bin/ &&
cp -R usr/include/* /usr/include/ &&
cp -R usr/lib64/* /usr/lib/ &&
cp -R usr/share/* /usr/share/ &&

install $SOURCE_DIRECTORY/addons/ad2_vcdimager/ad2_vcdimager /usr/bin/ &&
install $SOURCE_DIRECTORY/addons/aviscan/aviscan /usr/bin/ &&
install $SOURCE_DIRECTORY/addons/tsscan/tsscan /usr/bin/ &&
install $SOURCE_DIRECTORY/avidemux2.desktop /usr/share/applications/ &&
install $SOURCE_DIRECTORY/avidemux_icon.png /usr/share/icons/
