(

  # save tables
  if module_installed iptables ; then
    iptables-save -c > /etc/config.d/iptables.sav
  fi  &&

  # headers aren't installed by default
  OPTS+=" --enable-libipq --enable-devel"  &&

  # apparently they forgot to change this ...
  sedit "s/iptables-multi/xtables-multi/g"  Makefile.in  &&
  sedit "s/ip6tables-multi/xtables-multi/g" Makefile.in  &&

  default_build  &&

  # revive tables
  if [ -f /etc/config.d/iptables.sav ] ; then
    cat /etc/config.d/iptables.sav | iptables-restore -c  &&
    rm /etc/config.d/iptables.sav
  fi

) > $C_FIFO 2>&1
