(

  ./configure  --prefix=/usr  &&
  make                        &&
  prepare_install             &&
  make    install

) > $C_FIFO 2>&1  &&  (

  cp  $SCRIPT_DIRECTORY/bootparams.5.gz  /usr/man/man5

  if    [  !  -f  /etc/bootparams  ]
  then  cp  $SCRIPT_DIRECTORY/bootparams /etc
  fi

    case  $BOOTPARAMD_BOOT  in
    y|Y|j|J)  cp  $SCRIPT_DIRECTORY/rpc.bootparamd.sh  /etc/init.d

              ln  -sf  ../init.d/rpc.bootparamd.sh  /etc/rc0.d/K60rpc.bootparamd
              ln  -sf  ../init.d/rpc.bootparamd.sh  /etc/rc1.d/K60rpc.bootparamd
              ln  -sf  ../init.d/rpc.bootparamd.sh  /etc/rc2.d/K60rpc.bootparamd
              ln  -sf  ../init.d/rpc.bootparamd.sh  /etc/rc6.d/K60rpc.bootparamd

              ln  -sf  ../init.d/rpc.bootparamd.sh  /etc/rc3.d/S40rpc.bootparamd
              ln  -sf  ../init.d/rpc.bootparamd.sh  /etc/rc4.d/S40rpc.bootparamd
              ln  -sf  ../init.d/rpc.bootparamd.sh  /etc/rc5.d/S40rpc.bootparamd
              ;;
          *)  true
              ;;
  esac

)
