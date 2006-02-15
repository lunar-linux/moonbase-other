(

  MESA_PREFIX="/usr"

  sedit 's/\/usr\/X11R6\/include/\/usr\/X11\/include/' configs/linux &&
  sedit 's/\/usr\/X11R6\/lib/\/usr\/X11\/lib/' configs/linux &&
  sedit 's/\/usr\/local/\/usr/' configs/default &&
  sedit 's/PROGRAM_DIRS/#PROGRAM_DIRS/' configs/default &&

  make linux && # This needs better detection (x86_64 in particular)

  prepare_install				&&

  install -m644 include/GLView.h \
	  $MESA_PREFIX/include 			&&

  # We need to clean up before we install stuff as the old X11R6
  # might still be lying around

  rm -rf $MESA_PREFIX/include/GL 		&&
  cp -r include/GL $MESA_PREFIX/include/ 	&&

  for i in lib/*; do
    rm -rf $MESA_PREFIX/$i
    cp -a $i $MESA_PREFIX/lib/
  done
 
) > $C_FIFO 2>&1
