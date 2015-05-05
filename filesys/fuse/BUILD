  sedit "s:/etc/udev:/usr/lib/udev:" configure  &&

  OPTS+="   --enable-lib --enable-util"  &&

  default_build &&

  if ! module_installed sysvinit; then
    rm -f /etc/init.d/fuse
  fi
