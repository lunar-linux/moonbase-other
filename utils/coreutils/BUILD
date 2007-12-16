(

  patch_it $SOURCE2 1 &&
  # This patch resolve conflicts with shadow and heimdal
  patch_it $SOURCE3 1 &&

  # This should go away in version > 6.9
  for i in lib/utimens.{c,h} src/{copy,touch}.c ; do
    sedit 's/futimens/gl_&/' $i
  done &&

  bad_flags -malign-double

  CFLAGS="$CFLAGS -fgnu89-inline"

  # We really want this
  OPTS="$OPTS --enable-largefile"

  if [ "$WITH_NLS" == "y" ]; then
    OPTS="$OPTS --enable-nls"
  else
    OPTS="$OPTS --disable-nls"
  fi

  # tchan added this hack for coreutils > 6.x
  export CHGRPPROG=/bin/chgrp
  export CHMODPROG=/bin/chmod
  export    CPPROG=/bin/cp
  export MKDIRPROG=/bin/mkdir
  export    MVPROG=/bin/mv
  export    RMPROG=/bin/rm
  DEFAULT_POSIX2_VERSION=199209 default_build &&

  (
    for FILE in basename cat cp chgrp chmod chown cut date dd df echo false   \
                head id ln ls mkdir mknod nice pwd rm rmdir sleep sort \
                stty sync tail tr true uname ; do
      if [ -f /usr/bin/$FILE ] ; then
        /bin/mv -f /usr/bin/$FILE /bin
      fi
    done &&
    # mv cannot be mv'ed:
    if [ -f /usr/bin/mv ] ; then
      cp /usr/bin/mv /bin/mv &&
      rm /usr/bin/mv
    fi &&
    # also, bash will need to rehash, but doesn't:
    /bin/mv -f /usr/bin/chroot /usr/sbin
  )

) > $C_FIFO 2>&1
