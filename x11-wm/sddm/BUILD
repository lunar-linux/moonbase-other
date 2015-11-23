
  groupadd -g 64 sddm &&

  useradd -c "SDDM Daemon Owner" -d /var/lib/sddm -u 64 -g sddm -s /bin/false sddm &&

  OPTS+=" -DDBUS_CONFIG_FILENAME=sddm_org.freedesktop.DisplayManager.conf" &&

  default_cmake_build
