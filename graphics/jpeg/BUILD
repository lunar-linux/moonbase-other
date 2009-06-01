(
  
  cp /usr/share/automake/config.sub $SOURCE_DIRECTORY &&

  bad_flags -malign-double
  OPTS="$OPTS --enable-shared --enable-static --enable-maxmem=64"

  # Apply patchset
  unpack $SOURCE2 &&
  for i in jpeg-patches/*; do
          patch_it $i 1
  done &&
 
  default_build

) > $C_FIFO 2>&1
