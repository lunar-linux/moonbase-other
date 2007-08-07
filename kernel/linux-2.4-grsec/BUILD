(

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

) && (

  yes n | make oldconfig
  LD_PRELOAD= cp .config $CONFIG_CACHE/.config.grsec
  rm -f arch/i386/boot/bzImage


  make ${MAKES:+-j$MAKES} dep                         &&
  make ${MAKES:+-j$MAKES} clean                       &&
  make ${MAKES:+-j$MAKES} bzImage                     &&
  make ${MAKES:+-j$MAKES} modules                     &&
  backup_mods_krnl $VERSION-$PVERSION-grs      &&
  prepare_install                              &&
  make modules_install                         &&
  cp arch/i386/boot/bzImage /boot/$VERSION-$PVERSION-grs
  
) > $C_FIFO 2>&1
