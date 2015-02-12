
  if in_depends $MODULE %JPEG ; then
  sedit "207i #include <jpeglib.h>" libmng_types.h
  fi &&

  if in_depends $MODULE jpeg ; then
    sedit "202,206d" libmng_types.h
  fi &&

  default_build
