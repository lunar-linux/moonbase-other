bad_flags -malign-double &&

OPTS+=" --build=$BUILD  \
        --mandir=/usr/share/man" &&

mkdir -p /etc/modprobe.d &&

default_build &&

install -m0700 $SCRIPT_DIRECTORY/init.d/modutils /etc/init.d &&
ln -sf ../init.d/modutils /etc/rcS.d/S20modutils
