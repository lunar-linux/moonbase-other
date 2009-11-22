(

  DIRS="doc man etc src/shared src/wlanctl src/nwepgen src/mkmeta src/wlancfg"  &&
  sedit "s:RC_DIR=/etc/rc.d:RC_DIR=/etc/init.d:" config.in Configure  &&
  sedit "s:/usr/local/man/man1:/usr/share/man/man1:" man/Makefile     &&

  sedit "s:PRISM2_PLX=y:PRISM2_PLX=$PR2_PLX:" config.in  &&
  sedit "s:PRISM2_PCI=y:PRISM2_PCI=$PR2_PCI:" config.in  &&
  sedit "s:PRISM2_USB=y:PRISM2_USB=$PR2_USB:" config.in  &&
  if !(module_installed pcmcia-cs); then
    sedit "s:RISM2_PCMCIA=y:RISM2_PCMCIA=n:" config.in
  fi  &&

  make auto_config  &&
  for DIR in $DIRS ; do
    make -C $DIR || return 1
  done                  &&
  prepare_install       &&
  for DIR in $DIRS ; do
    make -C $DIR install || return 1
  done

) > $C_FIFO 2>&1
