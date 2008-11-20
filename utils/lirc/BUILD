
    if [ -e $CONFIG_CACHE/.config-$SPELL-.setup.config ];  then
        cp $CONFIG_CACHE/.config-$SPELL-.setup.config .setup.config
        cp $CONFIG_CACHE/.config-$SPELL-configure.sh configure.sh
        if  query  "Re-Configure"  n
        then ./setup.sh
        else true
        fi
    else
        ./setup.sh
    fi    

    cp .setup.config $CONFIG_CACHE/.config-$SPELL-.setup.config
    cp configure.sh $CONFIG_CACHE/.config-$SPELL-configure.sh

(
    ./configure.sh  --build=$BUILD        \
                    --prefix=/usr         \
                    --sysconfdir=/etc     \
                    --localstatedir=/var  \
                    $OPTS                &&
    default_make

) > $C_FIFO 2>&1  && (

    case  $LIRC_BOOT  in
      y|Y|j|J)  [  -f  /etc/init.d/lirc.sh  ]  ||
                cp  $SCRIPT_DIRECTORY/lirc.sh  /etc/init.d

                ln  -sf  ../init.d/lirc.sh  /etc/rc0.d/K51lirc
                ln  -sf  ../init.d/lirc.sh  /etc/rc1.d/K51lirc
                ln  -sf  ../init.d/lirc.sh  /etc/rc2.d/K51lirc
                ln  -sf  ../init.d/lirc.sh  /etc/rc6.d/K51lirc

                ln  -sf  ../init.d/lirc.sh  /etc/rc3.d/S51lirc
                ln  -sf  ../init.d/lirc.sh  /etc/rc4.d/S51lirc
                ln  -sf  ../init.d/lirc.sh  /etc/rc5.d/S51lirc
                ;;

            *)  true  ;;
  esac

)
