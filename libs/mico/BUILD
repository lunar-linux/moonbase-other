(

# Adding a missing include
  sed -i "40i #include <limits.h>" orb/fast_array.cc &&

  if in_depends $MODULE bluez ; then
     OPTS="--enable-wireless"
  fi &&

  default_build

) > $C_FIFO 2>&1
