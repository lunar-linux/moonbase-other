(

  prepare_install &&

  # installwatch is broken: it makes us account for the link TARGET and not just the link, so, for now:
  devoke_installwatch &&
  mkdir -p /sbin &&
  ln -sf /bin/systemd /sbin/init &&
  ln -sf /bin/systemctl /sbin/halt &&
  ln -sf /bin/systemctl /sbin/poweroff &&
  ln -sf /bin/systemctl /sbin/reboot &&
  ln -sf /bin/systemctl /sbin/runlevel &&
  ln -sf /bin/systemctl /sbin/shutdown &&
  ln -sf /bin/systemctl /sbin/telinit

) > $C_FIFO
