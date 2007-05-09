(

  case  $USE_MOUSE  in
     y|Y|j|J) UM="y"  ;;
           *) UM="n"  ;;
  esac

  sedit '267d' makefile
  sedit '266d' makefile

  default_build

) > $C_FIFO 2>&1
