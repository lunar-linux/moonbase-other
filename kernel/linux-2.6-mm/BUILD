cd  /usr/src/linux

while  
    case  $CONFIG_KERNEL in
	y|Y)
	    case $CONFIG_METHOD in
		xconfig )  
		    if [ "$DISPLAY" ]; then
	    		make xconfig || make menuconfig || make config
	    	    else
			make menuconfig || make config
		    fi
		    ;;

		menuconfig )
		    make menuconfig || make config ;;		
		
		config )
		    make config ;;		
	    esac

	    if  query  "Repeat $CONFIG_METHOD?  "  n ; then  
		CONFIG_KERNEL=y
	    else  
		CONFIG_KERNEL=n
            fi
	    
	    ;;

	*)  
	    false  ;;
    esac
do
    true
done


(
    yes  n  |  make  oldconfig
    cp  .config  $CONFIG_CACHE/.config-2.6-mm
    rm -f arch/i386/boot/bzImage

   # Because parallel make seems not to work, a hack   

    optimize_make                  &&
    KMAKES=${MAKES:=1}             &&
    make  -j${KMAKES} bzImage      &&
    make  -j${KMAKES} modules      &&
    backup_mods_krnl ${VERSION}    &&
    prepare_install                &&
    make  modules_install #        &&

    cp arch/i386/boot/bzImage /boot/${VERSION} 
    cp System.map             /boot/System.map-${VERSION}	

) > $C_FIFO 2>&1
