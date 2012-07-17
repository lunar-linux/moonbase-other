(

# Inserting a missing include.
  sed -i "41i #include <cups/ppd.h>"  prnt/hpps/hppsfilter.c &&

  if in_depends $MODULE PyQt4; then
     . /etc/profile.d/qt4.rc
  fi &&

  # Install /usr/bin/hpijs so don't get this error:
  # (/usr/lib/cups/filter/foomatic-rip-hplip) stopped with status 3!
  # Or this error:
  # sh: hpijs: command not found
  OPTS+=" --enable-hpijs-install" &&

  default_config &&

  # To fix the /var/log/messages warning that SYSFS will be removed in future udev versions.
  sedit "s:SYSFS:ATTR:g" data/rules/56-hpmud_support.rules data/rules/55-hpmud.rules &&

  default_make

) > $C_FIFO 2>&1
