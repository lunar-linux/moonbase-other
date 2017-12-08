touch INSTALL &&

autoreconf -i &&

find . -name ".pyc" -delete &&

default_build &&

sedit '/#include <config.h>/d' /usr/include/volume_key/libvolume_key.h
