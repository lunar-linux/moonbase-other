cd /usr/lib/virtualbox/src &&

export KERN_VER=$(installed_version linux)
# CI fix, /usr/src/linux is a directory on the CI, but a link on normal systems
if [ -d "/usr/src/linux" ]; then
    export KERN_DIR=/usr/src/linux
else
    export KERN_DIR=/usr/src/linux-$KERN_VER
fi &&
export MODULE_DIR=/lib/modules/$KERN_VER/misc

ln -sf ../vboxdrv    ./vboxdrv/vboxdrv &&
ln -sf ../vboxnetadp ./vboxnetadp/vboxnetadp &&
ln -sf ../vboxnetflt ./vboxnetflt/vboxnetflt &&
#ln -sf ../vboxpci    ./vboxpci/vboxpci &&

rm -fR vboxpci &&

default_make &&

install -Dm0644 /dev/null /usr/lib/modules-load.d/virtualbox-modules.conf &&
echo -e "vboxdrv\nvboxpci\nvboxnetadp\nvboxnetflt\n" > /usr/lib/modules-load.d/virtualbox-modules.conf &&

make clean
