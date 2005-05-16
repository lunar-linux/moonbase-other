(

  ( cd nvnet && make )                               &&
  ( cd nvsound/main && make )                        &&
  prepare_install                                    &&
  ( cd nvnet && make install )                       &&
  ( cd nvsound/main && make install )                &&
  install -m755 nvsound/nvmixer /usr/bin/            &&
  install -m755 nvsound/nvmix-reg /usr/bin/          &&
  install -m755 nforce-installer /usr/bin/           &&
  install -m755 nforce-bug-report.sh /usr/bin/       &&
  install -m755 nvsound/lib/libnvopenal.a /usr/lib/  &&
  install -m755 nvsound/lib/libnvalut.a /usr/lib/

) > $C_FIFO 2>&1
