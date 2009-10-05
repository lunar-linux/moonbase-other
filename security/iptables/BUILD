(

  if module_installed iptables; then iptables-save -c > /etc/config.d/iptables.sav; fi
  default_build  &&
  cat /etc/config.d/iptables.sav | iptables-restore -c  &&
  rm /etc/config.d/iptables.sav

) > $C_FIFO 2>&1
