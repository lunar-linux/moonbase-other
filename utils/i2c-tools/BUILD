export PYTHONDONTWRITEBYTECODE=1 &&
make EXTRA="eeprog py-smbus" &&

prepare_install &&

make EXTRA="eeprog py-smbus" PREFIX=/usr sbindir=/usr/bin install &&
install -Dm644 $SCRIPT_DIRECTORY/i2c-tools.sysusers /usr/lib/sysusers.d/$MODULE.conf &&
install -Dm644 $SCRIPT_DIRECTORY/45-i2c-tools.rules /usr/lib/udev/rules.d/45-i2c-tools.rules
