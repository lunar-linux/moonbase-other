OPTS+=" --disable-static \
        --disable-tests" &&

default_build &&

install -m 755 $SCRIPT_DIRECTORY/Xsession /etc/lightdm/Xsession &&

# PolicyKit
install -dm 750 -g 102 /usr/share/polkit-1/rules.d &&
install -m 644 $SCRIPT_DIRECTORY/lightdm.rules /usr/share/polkit-1/rules.d/lightdm.rules
