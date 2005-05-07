config_isdn()  {

  if  [  -e  $CONFIG_CACHE/.config-$MODULE  ];  then

    cp $CONFIG_CACHE/.config-$MODULE .config

    read  -t 10  -n 1  -p "Configure $MODULE? "  CONFIRM
    case  $CONFIRM  in
      y|Y)  make  config  ;;
	*)  make  subconfig ;;
    esac

  else

    make  config

  fi

}


config_isdn
cp    .config  $CONFIG_CACHE/.config-$MODULE

(

  make             &&
  prepare_install  &&
  make    install

) > $C_FIFO 2>&1
