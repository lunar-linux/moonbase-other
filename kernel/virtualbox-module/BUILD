cd /usr/lib/virtualbox/src &&

export KERN_DIR=/usr/src/linux &&
export MODULE_DIR=/lib/modules/$(installed_version linux)/misc

default_make &&
install -Dm0644 /dev/null /usr/lib/modules-load.d/virtualbox-modules.conf &&
echo -e "vboxdrv\nvboxpci\nvboxnetadp\nvboxnetflt\n" > /usr/lib/modules-load.d/virtualbox-modules.conf &&
make clean

