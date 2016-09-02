prepare_install &&

install -Dm644 $SCRIPT_DIRECTORY/hardening-wrapper-$('arch').conf /etc/hardening-wrapper.conf
install -Dm644 $SCRIPT_DIRECTORY/path.sh /etc/profile.d/hardening-wrapper.sh

make install PREFIX=/usr
