(

  # Fix for bug that cause .pc file to be incorrect if libexif is disabled
  if ! in_depends $MODULE libexif; then
    sedit "s;, @REQUIREMENTS_FOR_LIBEXIF@;;" libgphoto2.pc.in
  fi &&

  default_build  &&
  rm -fr /usr/include/gphoto2/gphoto2

) > $C_FIFO 2>61
