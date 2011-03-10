(

  sed -i -r 's@#if\ defined\(EOWNERDEAD\)@#if\ defined\(EOWNERDEAD\)\ \&\&\ defined\(PTHREAD_MUTEX_ROBUST_NP\)@' db/mutex/mut_pthread.c &&

  LDFLAGS=$(echo $LDFLAGS | sed  s/"-z combreloc"// ) &&

  OPTS+=" --without-selinux --enable-static=no" &&

  default_build

) > $C_FIFO 2>&1
