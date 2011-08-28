(

    ./configure  --prefix=/usr        \
                 --sysconfdir=/etc    \
                 --enable-drivers=all \
                 $OPTS              &&
    make                            &&
    prepare_install                 &&
    make    install

) > $C_FIFO 2>&1  && (

    case  $LCDPROC_BOOT  in
      y|Y|j|J)  [  -f  /etc/init.d/lcdproc.sh  ]  ||
                cp  $SCRIPT_DIRECTORY/lcdproc.sh  /etc/init.d

                ln  -sf  ../init.d/lcdproc.sh  /etc/rc0.d/K50lcdproc
                ln  -sf  ../init.d/lcdproc.sh  /etc/rc1.d/K50lcdproc
                ln  -sf  ../init.d/lcdproc.sh  /etc/rc2.d/K50lcdproc
                ln  -sf  ../init.d/lcdproc.sh  /etc/rc6.d/K50lcdproc

                ln  -sf  ../init.d/lcdproc.sh  /etc/rc3.d/S50lcdproc
                ln  -sf  ../init.d/lcdproc.sh  /etc/rc4.d/S50lcdproc
                ln  -sf  ../init.d/lcdproc.sh  /etc/rc5.d/S50lcdproc
                ;;

            *)  true  ;;
  esac

)
