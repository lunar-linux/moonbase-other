(

  #if uname -a | grep -q SMP ; then
  #  SMP="-SMP"
  #fi
  KERNEL_VERSION=$(grep UTS_RELEASE /usr/src/linux/include/linux/version.h  | cut -d'"' -f2)
  if echo $KERNEL_VERSION | grep -q '^2.6' ; then
    MOD_EXT=ko
  else
    MOD_EXT=o
  fi
  KMOD=fglrx.$(uname -r)${SMP}.${MOD_EXT}
  NMOD=fglrx.${MOD_EXT}

  chown -R root:root . &&
  find . -type d -exec chmod 755 {} \; &&

  # hacked together:
  cd $SOURCE_DIRECTORY/lib/modules/fglrx/build_mod &&
  sh make.sh &&
  prepare_install &&
  cd $SOURCE_DIRECTORY/lib/modules/fglrx &&
  set -x &&
  mkdir -p /lib/modules/$(uname -r)/drivers/char/drm &&
  install -m 644 $KMOD /lib/modules/$(uname -r)/drivers/char/drm/$NMOD &&
  cd $SOURCE_DIRECTORY &&
  install -m755 usr/X11R6/bin/fgl* /usr/X11R6/bin/ &&
  install -m644 usr/X11R6/include/X11/extensions/fglrx_gamma.h \
  	/usr/X11R6/include/X11/extensions/fglrx_gamma.h &&
  cp -a usr/X11R6/lib/* /usr/X11R6/lib/ &&
  install usr/include/GL/glxATI.h /usr/include/GL/ &&
  install usr/include/GL/glATI.h /usr/include/GL/

) > $C_FIFO 2>&1
