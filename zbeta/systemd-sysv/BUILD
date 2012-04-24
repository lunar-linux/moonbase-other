(

  prepare_install &&

  # installwatch is broken: it makes us account for the link TARGET and not just the link, so, for now:
  devoke_installwatch &&
  mkdir -p /sbin &&
  ln -sf /usr/lib/systemd/systemd /sbin/init &&
  ln -sf /usr/bin/systemctl /sbin/halt &&
  ln -sf /usr/bin/systemctl /sbin/poweroff &&
  ln -sf /usr/bin/systemctl /sbin/reboot &&
  ln -sf /usr/bin/systemctl /sbin/runlevel &&
  ln -sf /usr/bin/systemctl /sbin/shutdown &&
  ln -sf /usr/bin/systemctl /sbin/telinit

) > $C_FIFO
