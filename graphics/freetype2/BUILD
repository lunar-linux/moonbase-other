(

  case  $BYTECODE  in
    y|Y|j|J)  sedit  "s/#undef  TT_CONFIG_OPTION_BYTECODE_INTERPRETER/#define  TT_CONFIG_OPTION_BYTECODE_INTERPRETER/"  \
                     include/freetype/config/ftoption.h  ;;
          *)  true  ;;
  esac

  make  setup  CFG="--prefix=/usr"  &&
  make                              &&
  prepare_install                   &&
  make    install

) > $C_FIFO 2>&1
