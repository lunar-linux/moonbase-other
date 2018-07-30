sedit "22i #include <opencv2/imgproc.hpp>" src/filter/facebl0r/facebl0r.cpp &&

OPTS+=" --enable-cpuflags" &&

if in_depends $MODULE opencv-3 ; then
  LDFLAGS+=" -L/usr/share/OpenCV/3rdparty/lib/"
fi &&

./autogen.sh &&

default_build
