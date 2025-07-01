if in_depends $MODULE qt6-5compat; then
  source /etc/profile.d/qt6.rc
fi &&

cmake -B $MODULE-$VERSION -S . -G Ninja $OPTS &&
cmake --build $MODULE-$VERSION &&

prepare_install &&
cmake --install $MODULE-$VERSION &&

ln -sf /usr/lib64/pkgconfig/opencv4.pc /usr/lib64/pkgconfig/opencv.pc &&
ln -sf /usr/include/opencv4/opencv2 /usr/include/opencv2
