(

  bad_flags -malign-double

  default_build &&
  
  for FILE in basename cat cp chgrp chmod chown cut date dd df echo false   \
              groups head id ln ls mkdir mknod nice pwd rm rmdir sleep sort \
	      stty sync tail tr true uname ; do
    mv -f /usr/bin/$FILE /bin
  done &&
  # mv cannot be mv'ed:
  if [ -f /usr/bin/mv ] ; then
    cp /usr/bin/mv /bin/mv &&
    rm /usr/bin/mv
  fi
  # also, bash will need to rehash, but doesn't:
  /bin/mv -f /usr/bin/chroot /usr/sbin  &&
  rm -f /usr/bin/hostname &&
  rm -f /usr/bin/su

) > $C_FIFO 2>&1
