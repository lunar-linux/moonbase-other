python2 waf configure --prefix=/usr \
                      --alsa \
                      --dbus \
                      --classic &&

python2 waf build &&

prepare_install &&

python2 waf install &&

# configure realtime access/scheduling
install -Dm644 $SCRIPT_DIRECTORY/99-audio.conf /etc/security/limits.d/99-audio.conf &&
install -Dm644 $SCRIPT_DIRECTORY/40-hpet-permissions.rules /usr/lib/udev/rules.d/40-hpet-permissions.rules
