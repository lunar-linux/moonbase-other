(

  patch_it $SOURCE2 1 &&

# To remove the logs from filling up with;
# "...SYSFS{}= will be removed in a future udev version, please use ATTR{}..."
  sedit "s:SYSFS:ATTR:g" data/50-euvccam.rules &&

  default_build

) > $C_FIFO 2>&1
