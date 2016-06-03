
  patch_it $SOURCE2 1 &&

# Removing some headers that don't exist and adding one.
  sedit "s:#include <linux/videodev.h>::" cpi/v4l/v4l.c && 
  sedit "s:#include <linux/videodev.h>::" cpi/v4l2cpi/uvcvideo.h &&
  sedit "54i #include <libv4l1-videodev.h>" cpi/v4l/v4l.c &&
  sedit "6i #include <libv4l1-videodev.h>" cpi/v4l2cpi/uvcvideo.h &&

# To remove the logs from filling up with;
# "...SYSFS{}= will be removed in a future udev version, please use ATTR{}..."
  sedit "s:SYSFS:ATTR:g" data/50-euvccam.rules &&

  sedit "s:/etc/udev/rules.d:/usr/lib/udev/rules.d:" data/Makefile.* &&

  default_build
