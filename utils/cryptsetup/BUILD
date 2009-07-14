(

  # Stop udev from moaning about udevsettle being deprecated
  sedit "s:/sbin/udevsettle:/sbin/udevadm settle:" lib/libdevmapper.c &&

  # Create /sbin/cryptsetup rather than /usr/sbin/cryptsetup,
  # so Gnome can find it.
  OPTS+=" --sbindir=/sbin" &&

  default_build
  
) > $C_FIFO 2>&1
