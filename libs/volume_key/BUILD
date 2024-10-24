export PYTHONDONTWRITEBYTECODE=1 &&

touch INSTALL &&

autoreconf -i &&
export CFLAGS+=" $(python3-config --includes)"

default_build &&

sedit '/#include <config.h>/d' /usr/include/volume_key/libvolume_key.h
