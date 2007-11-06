(

if [ `uname -r | cut -d. -f2` -ge 6 ] && [ `uname -r | cut -d. -f3` -ge 23 ]; then
   message "${PROBLEM_COLOR}Current fglrx driver does not work with kernels greater than ${VERSION_COLOR}2.6.22"
   message "${MESSAGE_COLOR}Your kernel is at version ${VERSION_COLOR}`uname -r`${DEFAULT_COLOR}"
   exit 1
else
        prepare_install &&
        sh $SOURCE --extract fglrx-install &&
        cd fglrx-install &&

        cp -a common/etc / &&
        cp -a common/usr/sbin /usr/ &&
        cp -a common/usr/share/ati /usr/share/ &&
        cp -a common/usr/share/doc /usr/share/ &&
        cp -a common/usr/share/icons /usr/share/ &&
        cp -a common/usr/share/man /usr/share/ &&
        cp -a common/usr/include /usr/ &&
        cp -a common/usr/X11R6/include /usr/ &&
        install -m644 packages/Debian/dists/sid/amdcccle.desktop /usr/share/applications/ &&

        ln -fs /usr/lib/libGL.so.1.2 /usr/lib/libGL.so.1 &&
        ln -fs /usr/lib/libGL.so.1 /usr/lib/libGL.so &&

if [ -d /usr/lib64/xorg ]; then
        cp -a arch/x86_64/lib common
        cp -a arch/x86_64/usr/sbin /usr/
        cp -a arch/x86_64/usr/X11R6/bin /usr/
        cp -a arch/x86_64/usr/X11R6/lib64/lib* /usr/lib64/
        cp -a arch/x86_64/usr/X11R6/lib64/modules /usr/lib64/xorg/
        cp -a x710_64a/usr/X11R6/lib64/modules /usr/lib64/xorg/
else
        cp -a arch/x86/lib common
        cp -a arch/x86/usr/sbin /usr/
        cp -a arch/x86/usr/X11R6/bin /usr/
        cp -a arch/x86/usr/X11R6/lib/lib* /usr/lib/
        cp -a arch/x86/usr/X11R6/lib/modules /usr/lib/xorg/
        cp -a x710/usr/X11R6/lib/modules /usr/lib/xorg/
fi &&

        export KPATH="/usr/src/linux"

        KVER=$(if [ -f $KPATH/include/linux/utsrelease.h ]; then
                grep UTS_RELEASE $KPATH/include/linux/utsrelease.h | cut -d'"' -f2
        else
                grep UTS_RELEASE $KPATH/include/linux/version.h | cut -d'"' -f2
        fi)

        if echo $KVER | grep -q '^2.6' ; then
                MOD_EXT=ko
        else
                MOD_EXT=o
        fi

        cd common/lib/modules/fglrx/build_mod/2.6.x &&
        make KVER="$KVER" &&
        mkdir -p /lib/modules/${KVER}/drivers/char/drm &&
        install -m644 fglrx.${MOD_EXT} /lib/modules/${KVER}/drivers/char/drm/fglrx.${MOD_EXT} &&

        #Update module dependencies
        depmod
fi

) > $C_FIFO 2>&1
