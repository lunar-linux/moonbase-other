(
  # before load GNUSTEP variables
  . /etc/profile.d/gnustep.rc   &&
  . $GNUSTEP_SYSTEM_ROOT/Library/Makefiles/GNUstep.sh &&

  ./configure --enable-server=x11 \
              --enable-graphics=cairo --with-name=cairo \
              $OPTS  &&

  default_make

) > $C_FIFO 2>&1
