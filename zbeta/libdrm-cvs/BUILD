(

  ./autogen.sh  &&
  default_build	&&

  if $(uname -r | grep -q "^2\.6") ; then
	cd linux-core;
	make;
	mkdir -p /lib/modules/$(uname -r)/kernel/drivers/char/drm;
	cp *.ko /lib/modules/$(uname -r)/kernel/drivers/char/drm;
	depmod -a $(uname -r);
  fi

) > $C_FIFO 2>&1
