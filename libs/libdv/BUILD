(

  case  $MMX  in
    y|Y|j|J)  patch_it $SOURCE_CACHE/$SOURCE2 1  ;;
    n|N|f|F)  patch_it $SOURCE_CACHE/$SOURCE3 1  ;;
  esac

  export CFLAGS="$CFLAGS -O3"            && 
  ./configure --prefix=/usr              \
              $OPTS                      &&

  default_make 
) > $C_FIFO 2>&1
