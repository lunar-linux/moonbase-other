(

  if grep -q "CONFIG_R8169=m" /usr/src/linux/.config || [ -e /lib/modules/`uname -r`/kernel/drivers/net/r8169.ko ] ; then
    message "${PROBLEM_COLOR}You compiled the r8169 driver as a kernel module!"
    message "Remove the r8169 driver from your kernel completely"
    message "before recompiling this module!${DEFAULT_COLOR}"
    exit 1
  fi

  if grep -q "CONFIG_R8169=y" /usr/src/linux/.config ; then
    message "${PROBLEM_COLOR}You compiled the r8169 driver into the kernel!"
    message "Remove the r8169 driver from your kernel"
    message "completely before recompiling this module!${DEFAULT_COLOR}"
    exit 1
  fi

  patch_it $SOURCE2 0 &&

  make clean modules &&
  prepare_install &&
  make install

) > $C_FIFO 2>&1
