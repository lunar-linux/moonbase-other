(

  KVER=$(grep UTS_RELEASE /usr/src/linux/include/linux/version.h | cut -d '"' -f2)
  KSUFFIX=o
  if echo $KVER | grep -q "^2.6." ; then
    KSUFFIX=ko
  fi

  mv doc no-docs &&
  cd extras/drm/linux &&
  make DRM_MODULES="$DRM_MODULES" &&
  prepare_install &&
  mkdir -p /lib/modules/$KVER/kernel/drivers/drm &&
  for MOD in $DRM_MODULES; do
    install $MOD.$KSUFFIX /lib/modules/$KVER/kernel/drivers/drm/
  done && 
  depmod -a $KVER
 
) > $C_FIFO 2>&1
