pushd linux &&
default_make &&
install -Dm644 spectrwm.desktop /usr/share/xsessions/ &&
popd &&

install -Dm644 spectrwm.conf /etc/ &&
install -Dm755 ${SCRIPT_DIRECTORY}/spectrwm-no-preload /usr/bin/ &&

mkdir -p /etc/${MODULE} &&
cp spectrwm_*.conf /etc/${MODULE}/ &&

mkdir -p /usr/share/${MODULE} &&
install -Dm755 screenshot.sh /usr/share/spectrwm/ &&
install -Dm755 ${SCRIPT_DIRECTORY}/baraction.sh /usr/share/${MODULE}/ &&

# fix this for real in the makefile
rm -f /usr/bin/scrotwm
ln -sf /usr/bin/spectrwm /usr/bin/scrotwm
