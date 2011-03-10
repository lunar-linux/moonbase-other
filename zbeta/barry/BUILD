(

  # Appropriate udev rule
  sedit "s:plugdev:usb:" udev/99-blackberry-perms.rules &&

  OPTS+=" --disable-static" &&

  ./buildgen.sh &&
  default_build &&

  install -m644 udev/99-blackberry-perms.rules /etc/udev/rules.d/99-blackberry-perms.rules

) > $C_FIFO 2>&1
