(

# To remove the logs from filling up with;
# "...SYSFS{}= will be removed in a future udev version, please use ATTR{}..."
  sedit "s:SYSFS:ATTR:g" 45-hpdjconsole.rules &&

  default_build

) > $C_FIFO 2>&1
