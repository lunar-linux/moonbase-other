(

bad_flags -malign-double 

OPTS+=" --enable-cpu-level=6"
OPTS+=" --with-all-libs"

if [[ $ALL == "y" ]]; then
  OPTS+=" --enable-all-optimizations"
else
  if [[ $G2H == "y" ]]; then
    OPTS+=" --enable-guest2host-tlb"
  fi

  if [[ $REPEAT == "y" ]]; then
    OPTS+=" --enable-repeat-speedups"
  fi

  if [[ $ICACHE == "y" ]]; then
    OPTS+=" --enable-icache"
  fi

  if [[ $ASM == "y" ]]; then
    OPTS+=" --enable-host-specific-asms"
  fi
fi

if [[ $SB16 == "y" ]]; then
  OPTS+=" --enable-sb16=linux"
fi

if [[ $PLUGINS == "y" ]]; then
  OPTS+=" --enable-plugins"
fi

if [[ $GLOBAL == "y" ]]; then
  OPTS+=" --enable-global-pages"
fi

if [[ $SLOWDOWN == "y" ]]; then
  OPTS+=" --enable-slowdown"
fi

if [[ $IDLE == "y" ]]; then
  OPTS+=" --enable-idle-hack"
fi

if [[ $NE2000 == "y" ]]; then
  OPTS+=" --enable-ne2000"
fi

if [[ $MSR == "y" ]]; then
  OPTS+=" --enable-ignore-bad-msr"
fi

default_build

) > $C_FIFO 2>&1
