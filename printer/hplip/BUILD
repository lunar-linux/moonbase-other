
  if in_depends $MODULE PyQt4; then
     . /etc/profile.d/qt4.rc
  fi &&

  if in_depends $MODULE systemd ; then
    OPTS+=" --enable-udev_sysfs_rules"
  fi &&

  # Install /usr/bin/hpijs so don't get this error:
  # (/usr/lib/cups/filter/foomatic-rip-hplip) stopped with status 3!
  # Or this error:
  # sh: hpijs: command not found
  OPTS+=" --enable-hpijs-install" &&

  # Disable the HPLIP upgrade
  sedit "208i log.error\n clean exit(1)" upgrade.py &&

  default_config &&

  # To fix the /var/log/messages warning that SYSFS will be removed in future udev versions.
  sedit "s:SYSFS:ATTR:g" data/rules/56-hpmud_sysfs.rules &&

  default_make
