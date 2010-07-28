(

  # Fix for bug that cause .pc file to be incorrect if libexif is disabled
  if ! is_depends libexif; then
    sedit "s;, @REQUIREMENTS_FOR_LIBEXIF@;;" libgphoto2.pc.in
  fi &&

  default_build

) > $C_FIFO 2>61
