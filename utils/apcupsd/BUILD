OPTS+=" --sysconfdir=/etc/$MODULE" &&

if [[ "$USE_USB" = "y" ]]; then
  OPTS+=" --with-upstype=usb --with-upscable=usb"
fi &&

if [[ "$USE_APC" = "y" ]]; then
  OPTS+=" --with-serial-dev=/dev/usb/hid/hiddev[0-9]"
fi &&

default_build &&

install -dm755 /usr/lib/$MODULE/cgi-bin &&
mv /etc/apcupsd/*.cgi /usr/lib/$MODULE/cgi-bin/ &&

sedit 's#^LOCKFILE .*$#LOCKFILE /run/apcupsd#' /etc/apcupsd/apcupsd.conf
