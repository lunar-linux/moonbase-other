(
  patch_it $SOURCE_CACHE/$SOURCE2 1 
  case  $BYTECODE  in
    y|Y|j|J)  echo "#define TT_CONFIG_OPTION_BYTECODE_INTERPRETER" >> include/freetype/config/ftoption.h  ;;
          *)  true  ;;
  esac

  make  setup  CFG="--prefix=/usr"  &&
  make                              &&
  prepare_install                   &&
  make    install

) > $C_FIFO 2>&1
