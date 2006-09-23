(

  export X_VERSION="x690"
  export KERNEL_PATH="/usr/src/linux"

  KERNEL_VERSION=$(if [ -f /usr/src/linux/include/linux/utsrelease.h ]; then
      grep UTS_RELEASE /usr/src/linux/include/linux/utsrelease.h | cut -d'"' -f2
    else
      grep UTS_RELEASE /usr/src/linux/include/linux/version.h | cut -d'"' -f2
    fi)

  if echo $KERNEL_VERSION | grep -q '^2.6' ; then
    MOD_EXT=ko
  else
    MOD_EXT=o
  fi

  chown -R root:root . &&
  find . -type d -exec chmod 755 {} \; &&

  # hacked together:
  cd $SOURCE_DIRECTORY/lib/modules/fglrx/build_mod/2.6.x &&
  make KVER="$KERNEL_VERSION" &&
  prepare_install &&
  cd $SOURCE_DIRECTORY/lib/modules/fglrx &&
  mkdir -p /lib/modules/${KERNEL_VERSION}/drivers/char/drm &&
  install -m 644 build_mod/2.6.x/fglrx.${MOD_EXT} /lib/modules/${KERNEL_VERSION}/drivers/char/drm/fglrx.${MOD_EXT} &&
  cd $SOURCE_DIRECTORY &&
  install -m755 usr/X11R6/bin/fgl* /usr/bin/ &&
  install -m755 usr/X11R6/bin/aticonfig /usr/bin/ &&
  install -m644 usr/X11R6/include/X11/extensions/fglrx_gamma.h \
  	/usr/include/X11/extensions/ &&
  cp -a usr/X11R6/lib/lib* /usr/lib/ &&
  cp -a usr/X11R6/lib/modules/* /usr/lib/xorg/modules/ &&
  install usr/include/GL/glxATI.h /usr/include/GL/ &&
  install usr/include/GL/glATI.h /usr/include/GL/ &&
  gather_docs usr/share/doc/fglrx

) > $C_FIFO 2>&1
