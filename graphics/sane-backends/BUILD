(

  default_build &&

  # Create lock directory and assign it to the USB group
  mkdir -m 774 -p /var/lock/sane &&
  chgrp usb /var/lock/sane

) > $C_FIFO 2>&1
