(

	prepare_install &&
	sh $SOURCE --extract fglrx-install &&
	cd fglrx-install &&

	mkdir -p /usr/lib/fglrx &&
	cp -a common/usr/share/doc/fglrx /usr/share/doc/ &&
	install common/usr/share/icons/ccc_large.xpm /usr/share/icons/ &&
	install common/usr/share/icons/ccc_small.xpm /usr/share/icons/ &&
	install common/usr/share/man/man8/atieventsd.8.gz /usr/share/man/man8/ &&
	install common/usr/X11R6/include/X11/extensions/fglrx_gamma.h /usr/X11R6/include/X11/extensions/ &&
	install common/usr/share/gnome/apps/amdcccle.desktop /usr/share/applications/ &&
	cp -a common/usr/include/GL/* /usr/include/GL/ &&
	install common/usr/X11R6/include/X11/extensions/fglrx_gamma.h /usr/include/X11/extensions/ &&
	cp -a common/etc/ati /etc/ &&

	install arch/x86/usr/sbin/atieventsd /usr/sbin/ &&
	install arch/x86/usr/X11R6/bin/* /usr/bin/ &&
	install x690/usr/X11R6/bin/fireglcontrolpanel /usr/bin/ &&

	install arch/x86/usr/X11R6/lib/modules/dri/fglrx_dri.so /usr/lib/X11/modules/dri/ &&
	cp -a arch/x86/usr/X11R6/lib/lib* /usr/lib/fglrx/ &&
	ln -s /usr/lib/fglrx/libGL.so.1.2 /usr/lib/fglrx/libGL.so.1
	install x710/usr/X11R6/lib/modules/esut.a /usr/lib/xorg/modules/ &&
	install x710/usr/X11R6/lib/modules/glesx.so /usr/lib/xorg/modules/ &&
	install x710/usr/X11R6/lib/modules/drivers/fglrx_drv.so /usr/lib/xorg/modules/drivers/ &&
	install x710/usr/X11R6/lib/modules/linux/libfglrxdrm.so /usr/lib/xorg/modules/linux/ &&

	export KPATH="/usr/src/linux"

	KVER=$(if [ -f $KPATH/include/linux/utsrelease.h ]; then
		grep UTS_RELEASE $KPATH/include/linux/utsrelease.h | cut -d'"' -f2
	else
		grep UTS_RELEASE $KPATH/include/linux/version.h | cut -d'"' -f2
	fi)

	if echo $KVER | grep -q '^2.6' ; then
		MOD_EXT=ko
	else
		MOD_EXT=o
	fi

	cp -a arch/x86/lib/modules/fglrx/build_mod/* common/lib/modules/fglrx/build_mod/ &&
	cd common/lib/modules/fglrx/build_mod/2.6.x &&
	make KVER="$KVER" &&
	mkdir -p /lib/modules/${KVER}/drivers/char/drm &&
	install -m 644 fglrx.${MOD_EXT} /lib/modules/${KVER}/drivers/char/drm/fglrx.${MOD_EXT} &&

	#Update module dependencies
	depmod

) > $C_FIFO 2>&1
