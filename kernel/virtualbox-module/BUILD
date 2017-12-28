cd /usr/lib/virtualbox/src &&

export KERN_VER=$(installed_version linux)
export KERN_DIR=/usr/src/linux-$KERN_VER &&
export MODULE_DIR=/lib/modules/$KERN_VER/misc

default_make &&
install -Dm0644 /dev/null /usr/lib/modules-load.d/virtualbox-modules.conf &&
echo -e "vboxdrv\nvboxpci\nvboxnetadp\nvboxnetflt\n" > /usr/lib/modules-load.d/virtualbox-modules.conf &&
make clean

