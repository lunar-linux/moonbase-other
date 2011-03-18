(

  # Remove deprecation warning at lard startup
  sedit "758s/defined(%kmsg_buffer)/%kmsg_buffer/" lard &&

  prepare_install &&
  make install &&

  gather_docs lard.conf

)  > $C_FIFO 2>&1
