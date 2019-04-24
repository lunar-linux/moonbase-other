default_meson_build &&

if module_installed systemd; then
   rm -f /etc/init.d/fuse3
else
  if module_installed openrc; then
     rm -f /etc/init.d/fuse3
  fi
fi
