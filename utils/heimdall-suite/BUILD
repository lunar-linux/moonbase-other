default_cmake_config &&

make &&
prepare_install &&

if in_depends $MODULE qt5 ; then
  install -Dm755 bin/* /usr/bin/ &&

cat > $MODULE.desktop << EOF &&
[Desktop Entry]
Version=1.0
Name=Heimdall
Type=Application
Comment=Firmware flasher for Samsung mobile devices
Terminal=false
Exec=heimdall-frontend
Icon=phone
Categories=Development;
EOF

install -m644 -D $MODULE.desktop /usr/share/applications/$MODULE.desktop
 else
  install -Dm755 bin/* /usr/bin/
fi &&

install -Dm644 ../heimdall/60-heimdall.rules /usr/lib/udev/rules.d/60-heimdall.rules &&

if module_installed udev; then
    udevadm control --reload-rules
fi
