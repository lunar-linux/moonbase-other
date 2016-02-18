autoreconf -if &&

OPTS+=" --enable-tests \
        --enable-daemon \
        --disable-ntox \
        --disable-static" &&

default_build &&

rm -f /usr/lib/libtox*.a

install -Dm644 $SCRIPT_DIRECTORY/toxcore.conf /usr/lib/sysusers.d/toxcore.conf
install -Dm644 other/bootstrap_daemon/tox-bootstrapd.conf /etc/tox-bootstrapd.conf &&
install -Dm644 other/bootstrap_daemon/tox-bootstrapd.service /usr/lib/systemd/system/tox-bootstrapd.service
