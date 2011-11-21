cd /usr/src/linux/
    
while
if [ "$CONFIG_KERNEL" == "y" ]; then
    if [ "$PREFER_XCONFIG" == "y" -a -n "$DISPLAY" ]; then
        make xconfig || make menuconfig || make config
    elif [ "$PREFER_MENUCONFIG" == "y" ]; then
        make menuconfig || make config
    else
        make config
    fi
    if ! query "Repeat configuration?" n; then
        CONFIG_KERNEL=n
    fi
else
    false
fi
  do
  true
done

(

    MYARCH="`arch | grep -qw i.86 && echo i386 || arch`"
    
    cp  /usr/src/linux/.config  $CONFIG_CACHE/.config-2.6-mm
    rm -f arch/$MYARCH/boot/bzImage
    
    make  ${MAKES:+-j$MAKES} bzImage      &&
    make  ${MAKES:+-j$MAKES} modules      &&
    backup_mods_krnl ${VERSION}    &&
    prepare_install                &&
    make  modules_install          &&

    cp arch/$MYARCH/boot/bzImage /boot/${VERSION}                   && 
    cp System.map             /boot/System.map-${VERSION}          

) > $C_FIFO 2>&1
