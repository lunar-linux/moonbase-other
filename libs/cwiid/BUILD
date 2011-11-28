(

# This is needed to avoid a make failure with linking. The error was;
# cwiid: /usr/bin/ld: note: 'pthread_cancel@@GLIBC_2.2.5' is defined in DSO 
# /lib64/libpthread.so.0 so try adding it to the linker command line.
  LDFLAGS="-lpthread" &&

  sedit "s:hci_remote_name:hci_read_remote_name:g" libcwiid/bluetooth.c &&

  default_build

) > $C_FIFO 2>&1
