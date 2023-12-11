. /etc/profile.d/qt5.rc &&

export PYTHONDONTWRITEBYTECODE=1 &&

if in_depends $MODULE systemd ; then
  OPTS+=" -DENABLE_JOURNALD=ON"
 else OPTS+=" -DENABLE_JOURNALD=OFF"
fi &&

OPTS+=" -DDBUS_CONFIG_FILENAME=sddm_org.freedesktop.DisplayManager.conf \
        -DSDDM_INITIAL_VT=7"

default_cmake_build

add_priv_group sddm &&
add_priv_user sddm -d /var/lib/sddm -g sddm &&

mkdir -p /var/lib/sddm &&
chown -R sddm:sddm /var/lib/sddm > /dev/null &&

# Tweak some PAM stuff
sedit "s:system-login:system-auth:g" /etc/pam.d/sddm &&
sedit "s:system-local-login:system-auth:g" /etc/pam.d/sddm-autologin &&
sedit "s:session         optional pam_systemd.so:-session         optional pam_systemd.so:" /etc/pam.d/sddm-greeter &&

#install -Dm644 $SCRIPT_DIRECTORY/sysusers.d/sddm.conf /usr/lib/sysusers.d/sddm.conf &&
install -Dm644 $SCRIPT_DIRECTORY/tmpfiles.d/sddm.conf /usr/lib/tmpfiles.d/sddm.conf
