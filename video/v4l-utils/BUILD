
sedit "s:#include <sys/types.h>:#include <sys/types.h> \n#include <sys/sysmacros.h>:" lib/libv4lconvert/control/libv4lcontrol.c \
                                                                                      utils/libmedia_dev/get_media_devices.c \
                                                                                      utils/media-ctl/libmediactl.c &&
if in_depends $MODULE qt5; then
  . /etc/profile.d/qt5.rc &&
  CXXFLAGS+=" -std=c++11"
 else
  OPTS+=" --disable-qv4l2"
fi &&

OPTS+=" --exec-prefix=/usr \
        --disable-static" &&

default_build
