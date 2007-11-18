(
#still need several patches

  OPTS+="--enable-arch --enable-agetty --disable-init --disable-kill \
         --disable-last --disable-mesg --enable-partx --enable-raw \
	 --enable-rdev --enable-rename --disable-reset --disable-login-utils \
	 --enable-shedutils --disable-wall --enable-write"
  default_build &&
  install -g0 -o0 -m755 $SCRIPT_DIRECTORY/make-issue \
    /sbin/make-issue

) > $C_FIFO 2>&1
