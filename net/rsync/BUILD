OPTS+=" --with-included-popt=no \
        --with-included-zlib=no \
        --disable-debug"

default_build &&

mkdir -p /srv/ftp &&

install -Dm644 $SCRIPT_DIRECTORY/rsyncd.conf /etc/rsyncd.conf
