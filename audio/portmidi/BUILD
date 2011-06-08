(

  default_cmake_config &&
  
# Their implementation of cmake tends to ignore the prefix, so that
# needs some fixing, else things go in /usr/local.
  FIX_PRE=`find -type f -print | cut -c 3-` &&
  sedit "s:/usr/local:/usr:g" $FIX_PRE &&

  default_make

) > $C_FIFO 2>&1
