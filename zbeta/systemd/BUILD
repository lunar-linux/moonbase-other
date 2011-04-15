(

  sedit "s:/usr/local:/usr:"  configure  &&

  OPTS+=" --with-distro=other \
          --with-sysvinit-path=/etc/init.d \
          --with-sysvrcd-path=/etc         &&

  default_build

) > $C_FIFO 2>&1
