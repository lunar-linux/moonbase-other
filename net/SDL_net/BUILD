(

  OPTS+=" --disable-static" &&
  sed -i "29i #include <cstring>" chat.cpp &&
  sed -i  "21i /*" chat.cpp &&

  default_build

) > $C_FIFO 2>&1
