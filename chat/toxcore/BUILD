OPTS+=" -DCMAKE_INSTALL_PREFIX=/usr \
        -DDHT_BOOTSTRAP=on \
        -DBOOTSTRAP_DAEMON=on \
        -DBUILD_NTOX=off"

default_cmake_build &&

rm -f /usr/lib/libtox*.a &&

install -Dm644 $SCRIPT_DIRECTORY/toxcore.conf /usr/lib/sysusers.d/toxcore.conf

cd $SOURCE_DIRECTORY
install -Dm644 other/bootstrap_daemon/tox-bootstrapd.conf /etc/tox-bootstrapd.conf &&
install -Dm644 other/bootstrap_daemon/tox-bootstrapd.service /usr/lib/systemd/system/tox-bootstrapd.service
