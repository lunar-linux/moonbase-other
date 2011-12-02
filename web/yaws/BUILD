(

  default_build &&

  if [ ! -e /etc/config.d/yaws ]; then
      install -p -m 644 $SCRIPT_DIRECTORY/yaws /etc/config.d/yaws
  fi &&

  rm -rf /usr/src/yaws*

) > $C_FIFO 2>&1
