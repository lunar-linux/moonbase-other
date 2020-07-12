CFLAGS+=' -fcommon' # https://wiki.gentoo.org/wiki/Gcc_10_porting_notes/fno_common

#OPTS+=" --sbindir=/usr/bin"

./configure \
     CONF_DRIVER_MODULE_NVIDIA=nvidia \
     CONF_LDPATH_NVIDIA=/usr/lib/nvidia:/usr/lib \
     CONF_MODPATH_NVIDIA=/usr/lib/xorg/modules \
     --prefix=/usr \
     --with-udev-rules=/usr/lib/udev/rules.d \
     --sysconfdir=/etc \
     --without-pidfile \
     $OPTS

make &&

prepare_install &&

# Install main app
make install DESTDIR="/usr" \
     completiondir=/usr/share/bash-completion/completions

# Blacklist nvidia and nouveau modules
# Reference: https://github.com/Bumblebee-Project/Bumblebee/issues/719
install -Dm644 "${SCRIPT_DIRECTORY}/bumblebee.conf" "/usr/lib/modprobe.d/"

if module_installed systed; then
   # Install systemd unit
   install -Dm644 scripts/systemd/bumblebeed.service "/usr/lib/systemd/system/
#   sedit "s/sbin/bin/" /usr/lib/systemd/system/bumblebeed.service
fi &&

# Make bash_completion work
mv -v /usr/share/bash-completion/completions/{bumblebee,optirun} &&

# Fix for FS#59312
sedit "s/have/_have/" "/usr/share/bash-completion/completions/optirun"
