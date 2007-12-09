(

        KVER=$(if [ -f /usr/src/linux/include/linux/utsrelease.h ] ; then
                grep UTS_RELEASE /usr/src/linux/include/linux/utsrelease.h | cut -d '"' -f2
        else
                grep UTS_RELEASE /usr/src/linux/include/linux/version.h | cut -d -d '"' -f2
        fi)

        if $(uname -r | grep -q "^2\.6") ; then
                ./autogen.sh --prefix=/usr  &&
                cd linux-core &&
                make LINUXDIR=/usr/src/linux &&
                prepare_install &&
                mkdir -p /lib/modules/$KVER/kernel/drivers/char/drm &&
                cp *.ko /lib/modules/$KVER/kernel/drivers/char/drm &&
                depmod -a $KVER
        else
                exit 1
        fi

) > $C_FIFO 2>&1
