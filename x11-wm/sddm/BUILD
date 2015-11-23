  mkdir -p /var/lib/sddm &&

  add_priv_group sddm &&
  add_priv_user sddm -d /var/lib/sddm -g sddm &&

  OPTS+=" -DDBUS_CONFIG_FILENAME=sddm_org.freedesktop.DisplayManager.conf" &&

  default_cmake_build
