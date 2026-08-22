touch INSTALL &&

autoreconf -i &&

OPTS+=" --without-python --without-python3" &&

default_build &&

sedit '/#include <config.h>/d' /usr/include/volume_key/libvolume_key.h
