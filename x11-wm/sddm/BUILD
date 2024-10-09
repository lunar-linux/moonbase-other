source /etc/profile.d/qt6.rc &&
export LANG='en_US.UTF-8'
export PYTHONDONTWRITEBYTECODE=1 &&

if in_depends $MODULE systemd ; then
  OPTS+=" -DENABLE_JOURNALD=ON"
 else OPTS+=" -DENABLE_JOURNALD=OFF"
fi &&

OPTS+=" -DDBUS_CONFIG_FILENAME=sddm_org.freedesktop.DisplayManager.conf \
        -DCMAKE_INSTALL_PREFIX=/usr \
        -DCMAKE_BUILD_TYPE=Release \
        -DBUILD_WITH_QT6=ON \
        -DDATA_INSTALL_DIR=/usr/share/sddm \
        -DCMAKE_INSTALL_LIBEXECDIR=/usr/lib/sddm \
        -DDBUS_CONFIG_DIR=/usr/share/dbus-1/systemd.d \
        -DSDDM_INITIAL_VT=7 \
        -DUID_MAX=60513 \
        -Wno-dev"

cmake -B $MODULE-qt6 -S . $OPTS &&
cmake --build $MODULE-qt6 &&

prepare_install &&

add_priv_group sddm &&
add_priv_user sddm -d /var/lib/sddm -g sddm &&

mkdir -p /var/lib/sddm &&
chown -R sddm:sddm /var/lib/sddm > /dev/null &&

cmake --install $MODULE-qt6 &&
cmake --install $MODULE-qt6/src/greeter &&
cmake --install $MODULE-qt6/components &&

# Tweak some PAM stuff
sedit "s:system-login:system-auth:g" /etc/pam.d/sddm &&
sedit "s:system-local-login:system-auth:g" /etc/pam.d/sddm-autologin &&
sedit "s:session         optional pam_systemd.so:-session         optional pam_systemd.so:" /etc/pam.d/sddm-greeter &&

install -Dm644 $SCRIPT_DIRECTORY/sysusers.d/sddm.conf /usr/lib/sysusers.d/sddm.conf &&
install -Dm644 $SCRIPT_DIRECTORY/tmpfiles.d/sddm.conf /usr/lib/tmpfiles.d/sddm.conf
