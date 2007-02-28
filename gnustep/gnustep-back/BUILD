(
  # before load GNUSTEP variables
  . $GNUSTEP_ROOT/System/Library/Makefiles/GNUstep.sh

  ./configure $OPTS  &&
  default_make

#  if ! grep -q "/System/Libraries/ix86/linux-gnu/gnu-gnu-gnu" /etc/ld.so.conf;# then
#    echo "/System/Libraries/ix86/linux-gnu/gnu-gnu-gnu" >> /etc/ld.so.conf  
#  fi
#
) > $C_FIFO 2>&1
