(
  # before load GNUSTEP variables
  source /opt/lunar/GNUstep/1/System/Makefiles/GNUstep.sh

  ./configure --prefix=/opt/lunar/GNUstep/1 $OPTS  &&
  make                              &&
  prepare_install                   &&
  make    install

  if ! grep -q "/opt/lunar/GNUstep/1/System/Libraries/ix86/linux-gnu/gnu-gnu-gnu" /etc/ld.so.conf; then
    echo "/opt/lunar/GNUstep/1/System/Libraries/ix86/linux-gnu/gnu-gnu-gnu" >> /etc/ld.so.conf  
  fi

) > $C_FIFO 2>&1
