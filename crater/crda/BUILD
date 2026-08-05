make &&

prepare_install &&

# Install crda, regdbdump and udev rules
make UDEV_RULE_DIR=/usr/lib/udev/rules.d/ SBINDIR=/usr/bin/ install &&

# Adjust paths in udev rule file
sedit 's|/sbin/crda|/usr/bin/crda|' /usr/lib/udev/rules.d/85-regulatory.rules &&

# This rule automatically sets the regulatory domain when cfg80211 is loaded
echo 'ACTION=="add", SUBSYSTEM=="module", DEVPATH=="/module/cfg80211", RUN+="/usr/bin/set-wireless-regdom"' >> /usr/lib/udev/rules.d/85-regulatory.rules

install -D -m755 $SCRIPT_DIRECTORY/set-wireless-regdom /usr/bin/set-wireless-regdom
