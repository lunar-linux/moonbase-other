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
    
    cp  /usr/src/linux/.config  $CONFIG_CACHE/.config-2.6-mm
    rm -f arch/i386/boot/bzImage
    
   # Because parallel make seems not to work, a hack   
    
    optimize_make                  &&
    KMAKES=${MAKES:=1}             &&
    make  -j${KMAKES} bzImage      &&
    make  -j${KMAKES} modules      &&
    backup_mods_krnl ${VERSION}    &&
    prepare_install                &&
    make  modules_install          &&

    cp arch/i386/boot/bzImage /boot/${VERSION}		   && 
    cp System.map             /boot/System.map-${VERSION}  	

) > $C_FIFO 2>&1

