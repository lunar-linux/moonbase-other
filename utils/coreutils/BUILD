(

  bad_flags -malign-double

  # this is vitally important here:
  export PATH=/bin:/usr/bin
  
  DEFAULT_POSIX2_VERSION=199209 default_build &&
  
  (
    for FILE in basename cat cp chgrp chmod chown cut date dd df echo false   \
                groups head id ln ls mkdir mknod nice pwd rm rmdir sleep sort \
                stty sync tail tr true uname ; do
      if [ -f /usr/bin/$FILE ] ; then
        /bin/mv -f /usr/bin/$FILE /bin
      fi
    done &&
    # mv cannot be mv'ed:
    if [ -f /usr/bin/mv ] ; then
      cp /usr/bin/mv /bin/mv &&
      rm /usr/bin/mv
    fi
    # also, bash will need to rehash, but doesn't:
    /bin/mv -f /usr/bin/chroot /usr/sbin  &&
    /bin/rm -f /usr/bin/hostname &&
    /bin/rm -f /usr/bin/su
  )

) > $C_FIFO 2>&1
