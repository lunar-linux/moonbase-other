(
#still need several patches

  OPTS+=" --enable-arch --enable-agetty --disable-init --disable-kill \
          --disable-last --disable-mesg --enable-partx --enable-raw \
          --enable-rename --disable-reset --disable-login-utils \
          --enable-schedutils --disable-wall --enable-write --enable-fsck"  &&

  default_build  &&

  # Some apps use fixed paths to /usr/bin so we add a symlink to make
  # them happy. For example autoconf looks for this app only inside /usr/bin
  ln -sf /bin/arch  /usr/bin/arch  &&

  install -g0 -o0 -m755 $SCRIPT_DIRECTORY/make-issue /sbin/make-issue

) > $C_FIFO 2>&1
