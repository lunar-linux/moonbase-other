(

  patch_it $SOURCE2 1 &&

  bad_flags -malign-double

#  CFLAGS="$CFLAGS -fgnu89-inline"  - it does not work on gcc 3.x

  # We really want this
  OPTS="$OPTS --enable-largefile"

  if [ "$WITH_NLS" == "y" ]; then
    OPTS="$OPTS --enable-nls"
  else
    OPTS="$OPTS --disable-nls"
  fi

  # This option resolves conflicts with shadow/heimdal, net-tools and procps
  OPTS="$OPTS --enable-no-install-program=arch,hostname,su,groups,kill,uptime"

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
  ) &&

# Some apps use fixed paths to /usr/bin so we add symlinks to make
# them happy. For example see config.log of any compiled app to see that
# autoconf looks for these coreutils apps only inside /usr/bin
ln -sf /bin/uname /usr/bin/uname &&
ln -sf /bin/arch  /usr/bin/arch

) > $C_FIFO 2>&1
