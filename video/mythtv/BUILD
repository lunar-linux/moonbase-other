. /etc/profile.d/qt5.rc &&

pushd mythtv &&
   patch_it $SOURCE2 1 &&
   ./configure --prefix=/usr $OPTS &&
   default_make &&
popd &&

mkdir -p /var/log/mythtv &&
install -Dm644 $SCRIPT_DIRECTORY/sysusers.d/mythtv.conf /usr/lib/sysusers.d/mythtv.conf &&
install -Dm644 $SCRIPT_DIRECTORY/99-mythtv-backend.rules /usr/lib/udev/rules.d/99-mythtv-backend.rules
