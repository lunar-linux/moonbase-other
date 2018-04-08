
  if ! grep -q sse2 /proc/cpuinfo ; then
     OPTS+=" --with-sse2=no"
   else
     OPTS+=" --with-sse2=yes"
  fi &&

  OPTS+=" --with-nls=no" &&

  default_build
