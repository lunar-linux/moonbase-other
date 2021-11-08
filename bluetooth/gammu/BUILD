OPTS+=" -DINSTALL_PHP_EXAMPLES=0 -DINSTALL_MEDIA=0"

default_cmake_build &&

add_priv_group smsd &&
add_priv_user smsd -d /run/gammu-smsd.pid -g smsd

if in_depends $MODULE systemd; then
  install ../contrib/udev/45-nokiadku2.rules /usr/lib/udev/rules.d &&
  install ../contrib/udev/69-gammu-acl.rules /usr/lib/udev/rules.d
fi &&

if [ ! -f /etc/smsdrc ] ; then
  cp ../docs/config/smsdrc /etc/smsdrc &&
  sedit 's:logfile = smsdlog:logfile = syslog:' /etc/smsdrc
fi &&

if [ ! -f /etc/gammurc ] ; then
  cp ../docs/config/gammurc /etc/gammurc
fi &&

# There do not need the executable bit
chmod -x /usr/lib/udev/rules.d/45-nokiadku2.rules /usr/lib/udev/rules.d/69-gammu-acl.rules
