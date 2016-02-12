if in_depends $MODULE PyQt4; then
  . /etc/profile.d/qt4.rc
fi &&

if in_depends $MODULE systemd; then
  OPTS+=" --enable-udev_sysfs_rules"
fi &&

# Install /usr/bin/hpijs so don't get this error:
# (/usr/lib/cups/filter/foomatic-rip-hplip) stopped with status 3!
# Or this error:
# sh: hpijs: command not found
OPTS+=" --enable-hpijs-install" &&

default_build
