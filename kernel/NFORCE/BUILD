(

  make -C nvnet                                      &&
  make -C nvsound/main                               &&
  prepare_install                                    &&
  make -C nvnet install                              &&
  make -C nvsound/main install                       &&
  install -m755 nvsound/nvmixer /usr/bin/            &&
  install -m755 nvsound/nvmix-reg /usr/bin/          &&
  install -m755 nforce-installer /usr/bin/           &&
  install -m755 nforce-bug-report.sh /usr/bin/       &&
  install -m755 nvsound/lib/libnvopenal.a /usr/lib/  &&
  install -m755 nvsound/lib/libnvalut.a /usr/lib/

) > $C_FIFO 2>&1
