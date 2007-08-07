(
  KVERSION="`readlink /usr/src/linux | sed 's/linux-*//g' | cut -d. -f2 | cut -d- -f1`"

  prepare_install &&
  if [ $KVERSION == "4" ]; then
    if [ -d /usr/include/asm ] && [ -d /usr/include/linux ]; then
        rm -rf /usr/include/asm /usr/include/linux
    fi

    mkdir -p /usr/include/asm /usr/include/linux
    cp -r /usr/src/linux/include/asm/* /usr/include/asm/
    cp -r /usr/src/linux/include/linux/* /usr/include/linux/
  else
    message "${PROBLEM_COLOR}You can only use these headers with Linux 2.4.x!${DEFAULT_COLOR}"
    exit 1
  fi

) > $C_FIFO 2>&1
