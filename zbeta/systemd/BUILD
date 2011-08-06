(

  #  autoreconf &&
  OPTS+=" --with-rootdir=/ " &&
  OPTS+=" --with-distro=other" &&
  OPTS+=" --with-udevrulesdir=/lib/udev/rules.d/" &&

  # just adding some files which are useful to
  # systemd
  # todo: some info-message to the user, that
  #       he/she should adjust /etc/hostname,
  #       /etc/vconsole.conf and /etc/locale.conf
  #       could be useful.

  # a not existing hostname is set to lunar.
  if [ ! -f /etc/hostname ]; then
    cp $SCRIPT_DIRECTORY/files/hostname /etc/hostname
  fi
  # vconsole.conf defaults to us-layout
  if [ ! -f /etc/vconsole.conf ]; then
    cp $SCRIPT_DIRECTORY/files/vconsole.conf /etc/vconsole.conf
  fi
  # os-release should properly show lunar
  # todo: we might replace this with some auto-generated
  #       values from /etc/lunar.release in the future.
  if [ ! -f /etc/os-release ]; then
    cp $SCRIPT_DIRECTORY/files/os-release /etc/os-release
  fi 
  # last but not least the locale settings, defaulting to US
  if [ ! -f /etc/locale.conf ]; then
    cp $SCRIPT_DIRECTORY/files/locale.conf /etc/locale.conf
  fi 

  default_build

) > $C_FIFO 2>&1
