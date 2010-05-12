(

bad_flags -malign-double 

OPTS="$OPTS --enable-cpu-level=6"
OPTS="$OPTS --with-all-libs"

if [[ $ALL == "y" ]]; then
  OPTS="$OPTS --enable-all-optimizations"
else
  if [[ $G2H == "y" ]]; then
    OPTS="$OPTS --enable-guest2host-tlb"
  fi

  if [[ $REPEAT == "y" ]]; then
    OPTS="$OPTS --enable-repeat-speedups"
  fi

  if [[ $ICACHE == "y" ]]; then
    OPTS="$OPTS --enable-icache"
  fi

  if [[ $ASM == "y" ]]; then
    OPTS="$OPTS --enable-host-specific-asms"
  fi
fi

if [[ $SB16 == "y" ]]; then
  OPTS="$OPTS --enable-sb16=linux"
fi

if [[ $PLUGINS == "y" ]]; then
  OPTS="$OPTS --enable-plugins"
fi

if [[ $GLOBAL == "y" ]]; then
  OPTS="$OPTS --enable-global-pages"
fi

if [[ $SLOWDOWN == "y" ]]; then
  OPTS="$OPTS --enable-slowdown"
fi

if [[ $IDLE == "y" ]]; then
  OPTS="$OPTS --enable-idle-hack"
fi

if [[ $NE2000 == "y" ]]; then
  OPTS="$OPTS --enable-ne2000"
fi

if [[ $MSR == "y" ]]; then
  OPTS="$OPTS --enable-ignore-bad-msr"
fi

default_build

) > $C_FIFO 2>&1
