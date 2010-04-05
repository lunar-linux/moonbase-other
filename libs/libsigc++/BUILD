(

  cp /usr/share/automake/config.sub $SOURCE_DIRECTORY/scripts/ &&

  sed -i "5i #include <string.h>" tests/signals/convert_slot_test.cc && 

  default_build

) > $C_FIFO 2>&1
