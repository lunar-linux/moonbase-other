(
  # before load GNUSTEP variables
  . /etc/profile.d/gnustep.rc   &&
  . $GNUSTEP_SYSTEM_ROOT/Library/Makefiles/GNUstep.sh &&

  ./configure $OPTS  &&
  default_make

#  if ! grep -q "/System/Libraries/ix86/linux-gnu/gnu-gnu-gnu" /etc/ld.so.conf;# then
#    echo "/System/Libraries/ix86/linux-gnu/gnu-gnu-gnu" >> /etc/ld.so.conf  
#  fi
#
) > $C_FIFO 2>&1
