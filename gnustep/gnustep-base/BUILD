(
  # before load GNUSTEP variables
  source /System/Makefiles/GNUstep.sh

  ./configure $OPTS  &&
  make                              &&
  prepare_install                   &&
  make    install

  if ! grep -q "/System/Libraries/ix86/linux-gnu/gnu-gnu-gnu" /etc/ld.so.conf; then
    echo "/System/Libraries/ix86/linux-gnu/gnu-gnu-gnu" >> /etc/ld.so.conf  
  fi

) > $C_FIFO 2>&1
