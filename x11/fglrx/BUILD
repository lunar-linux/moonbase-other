(
# For future use. AMD seems to be always too late
#if [ `uname -r | cut -d. -f2` -ge 6 ] && [ `uname -r | cut -d. -f3` -ge 23 ]; then
#   message "${PROBLEM_COLOR}Current fglrx driver does not work with kernels greater than ${VERSION_COLOR}2.6.22"
#   message "${MESSAGE_COLOR}Your kernel is at version ${VERSION_COLOR}`uname -r`${DEFAULT_COLOR}"
#   exit 1
#else
        prepare_install &&
        sh $SOURCE --extract fglrx-install &&
        cd fglrx-install &&

        cp -af common/etc / &&
if [ ! -f /etc/ati/amdpcsdb ]; then
        install -m666 /etc/ati/amdpcsdb.default /etc/ati/amdpcsdb
fi &&
        cp -af common/usr/sbin /usr &&
        cp -af common/usr/share/ati /usr/share &&
        cp -af common/usr/share/doc /usr/share &&
        cp -af common/usr/share/icons /usr/share &&
        cp -af common/usr/share/man /usr/share &&
        cp -af common/usr/include /usr &&
        cp -af common/usr/X11R6/include /usr/X11R6 &&
        install -m644 packages/Debian/dists/sid/amdcccle.desktop /usr/share/applications &&

        rm -f /usr/lib/libGL.so.1 /usr/lib/libGL.so &&
        ln -fs /usr/lib/libGL.so.1.2 /usr/lib/libGL.so.1 &&
        ln -fs /usr/lib/libGL.so.1 /usr/lib/libGL.so &&

        BIT="" BITA="" BT=""

if [ -d /usr/lib64 ]; then
        BIT="_64" BITA="_64a" BT="64"
fi &&

        cp -af arch/x86$BIT/lib common &&
        cp -af arch/x86$BIT/usr/sbin /usr &&
        install -m755 arch/x86$BIT/usr/X11R6/bin/* /usr/X11R6/bin &&
        cp -af arch/x86$BIT/usr/X11R6/lib$BT/lib* /usr/X11R6/lib$BT &&
        cp -af arch/x86$BIT/usr/X11R6/lib$BT/modules /usr/X11R6/lib$BT/xorg &&
        cp -af x710$BITA/usr/X11R6/lib$BT/modules /usr/X11R6/lib$BT/xorg &&
        mkdir -p /usr/X11R6/lib$BT/dri &&
        ln -sf /usr/X11R6/lib$BT/xorg/modules/dri/fglrx_dri.so /usr/X11R6/lib$BT/dri/fglrx_dri.so &&


        export KPATH="/usr/src/linux" &&

        KVER=$(if [ -f $KPATH/include/linux/utsrelease.h ]; then
                grep UTS_RELEASE $KPATH/include/linux/utsrelease.h | cut -d'"' -f2
        else
                grep UTS_RELEASE $KPATH/include/linux/version.h | cut -d'"' -f2
        fi) &&

        if echo $KVER | grep -q '^2.6' ; then
                MOD_EXT=ko
        else
                MOD_EXT=o
        fi &&

        cd common/lib/modules/fglrx/build_mod/2.6.x &&
        make KVER="$KVER" &&
        mkdir -p /lib/modules/${KVER}/drivers/char/drm &&
        install -m644 fglrx.${MOD_EXT} /lib/modules/${KVER}/drivers/char/drm/fglrx.${MOD_EXT} &&

        #Update module dependencies
        depmod
#fi

) > $C_FIFO 2>&1
