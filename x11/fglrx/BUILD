(

  KERNEL_VERSION=$(grep UTS_RELEASE /usr/src/linux/include/linux/version.h  | cut -d'"' -f2)
  if echo $KERNEL_VERSION | grep -q '^2.6' ; then
    MOD_EXT=ko
  else
    MOD_EXT=o
  fi

  chown -R root:root . &&
  find . -type d -exec chmod 755 {} \; &&

  # hacked together:
  cd $SOURCE_DIRECTORY/lib/modules/fglrx/build_mod &&
  sh make.sh &&
  prepare_install &&
  cd $SOURCE_DIRECTORY/lib/modules/fglrx &&
  mkdir -p /lib/modules/${KERNEL_VERSION}/drivers/char/drm &&
  mkdir -p /lib/modules/${KERNEL_VERSION}/drivers/char/agp &&
  install -m 644 fglrx.${KERNEL_VERSION}.${MOD_EXT} /lib/modules/${KERNEL_VERSION}/drivers/char/drm/fglrx.${MOD_EXT} &&
  install -m 644 fglrx_agp.${KERNEL_VERSION}.${MOD_EXT} /lib/modules/${KERNEL_VERSION}/drivers/char/agp/fglrx_agp.${MOD_EXT} &&
  cd $SOURCE_DIRECTORY &&
  install -m755 usr/X11R6/bin/fgl* /usr/X11R6/bin/ &&
  install -m644 usr/X11R6/include/X11/extensions/fglrx_gamma.h \
  	/usr/X11R6/include/X11/extensions/ &&
  cp -a usr/X11R6/lib/* /usr/X11R6/lib/ &&
  install usr/include/GL/glxATI.h /usr/include/GL/ &&
  install usr/include/GL/glATI.h /usr/include/GL/ &&
  gather_docs usr/share/doc/fglrx

) > $C_FIFO 2>&1
