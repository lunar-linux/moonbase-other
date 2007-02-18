(
  autoreconf -i -f
 
  modprobe -l | grep v4l &> /dev/null && OPTS="$OPTS --enable-v4l" || :
  
  egrep '\<mmx\>' /proc/cpuinfo && OPTS="$OPTS --enable-mmx" || :
  egrep '\<sse\>' /proc/cpuinfo && OPTS="$OPTS --enable-sse" || :
  egrep '\<sse2\>' /proc/cpuinfo && OPTS="$OPTS --enable-sse2" || :
  egrep '\<3dnow\>' /proc/cpuinfo && OPTS="$OPTS --enable-3dnow" || :

  default_build 

) > $C_FIFO 2>&1
