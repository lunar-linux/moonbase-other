(

  bad_flags -malign-double

  patch_it $SOURCE_CACHE/$SOURCE2 1 &&
  
  default_build &&
  
  for FILE in basename cat cp chgrp chmod chown cut date dd df echo     \
              false groups id ln ls mkdir mknod nice pwd rm rmdir sleep \
	      sort stty sync tail tr true uname usleep mv ; do
    mv -f /usr/bin/$FILE /bin
  done &&
  mv -f /usr/bin/chroot /usr/sbin  &&
  rm -f /usr/bin/hostname &&
  rm -f /usr/bin/su

) > $C_FIFO 2>&1
