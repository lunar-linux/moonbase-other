(
  autoreconf -i -f

  modprobe -l | grep v4l &> /dev/null && OPTS+=" --enable-v4l" || :

  egrep '\<mmx\>' /proc/cpuinfo &> /dev/null && OPTS+=" --enable-mmx" || :
  egrep '\<sse\>' /proc/cpuinfo &> /dev/null && OPTS+=" --enable-sse" || :
  egrep '\<sse2\>' /proc/cpuinfo &> /dev/null && OPTS+=" --enable-sse2" || :
  egrep '\<3dnow\>' /proc/cpuinfo &> /dev/null && OPTS+=" --enable-3dnow" || :

  default_build

) > $C_FIFO 2>&1
