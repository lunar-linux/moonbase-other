(
  case  $OPENGL  in
    y|Y|j|J)  OPTS="$OPTS --with-opengl" 
              if module_installed NVIDIA_kernel
	      then if ! module_installed glut; then lin glut; fi 
              elif ! module_installed Mesa; then lin Mesa
              fi
  esac
  ./configure --prefix=/usr      \
              --with-gtk         \
	      $OPTS		 &&
  make                           &&
  prepare_install                &&
  make    install

) > $C_FIFO 2>&1
