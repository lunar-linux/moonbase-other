(

  case  $USE_MOUSE  in
     y|Y|j|J) UM="y"  ;;
           *) UM="n"  ;;
  esac

  sedit '281,283d' makefile

  default_build

) > $C_FIFO 2>&1
