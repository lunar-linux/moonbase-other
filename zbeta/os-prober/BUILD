(

  make &&

  prepare_install &&

  install -d                                                   /usr/bin
  install -m 755  linux-boot-prober                            /usr/bin/linux-boot-prober
  install -m 755  os-prober                                    /usr/bin/os-prober
  install -d                                                   /usr/lib/linux-boot-probes/mounted
  install -m 755  linux-boot-probes/common/50mounted-tests     /usr/lib/linux-boot-probes/50mounted-tests
  install -m 755  linux-boot-probes/mounted/x86/40grub         /usr/lib/linux-boot-probes/mounted/40grub
  install -m 755  linux-boot-probes/mounted/common/40grub2     /usr/lib/linux-boot-probes/mounted/40grub2
  install -m 755  linux-boot-probes/mounted/x86/50lilo         /usr/lib/linux-boot-probes/mounted/50lilo
  install -m 755  linux-boot-probes/mounted/common/90fallback  /usr/lib/linux-boot-probes/mounted/90fallback
  install -d                                                   /usr/lib/os-prober
  install -m 755  newns                                        /usr/lib/os-prober/newns
  install -d                                                   /usr/lib/os-probes/init
  install -m 755  os-probes/common/50mounted-tests             /usr/lib/os-probes/50mounted-tests
  install -m 755  os-probes/init/common/10filesystems          /usr/lib/os-probes/init/10filesystems
  install -d                                                   /usr/lib/os-probes/mounted/
  install -m 755  os-probes/mounted/x86/10freedos              /usr/lib/os-probes/mounted/10freedos
  install -m 755  os-probes/mounted/x86/10qnx                  /usr/lib/os-probes/mounted/10qnx
  install -m 755  os-probes/mounted/powerpc/20macosx           /usr/lib/os-probes/mounted/20macosx
  install -m 755  os-probes/mounted/x86/20microsoft            /usr/lib/os-probes/mounted/20microsoft
  install -m 755  os-probes/mounted/x86/30utility              /usr/lib/os-probes/mounted/30utility
  install -m 755  os-probes/mounted/common/40lsb               /usr/lib/os-probes/mounted/40lsb
  install -m 755  os-probes/mounted/x86/70hurd                 /usr/lib/os-probes/mounted/70hurd
  install -m 755  os-probes/mounted/x86/80minix                /usr/lib/os-probes/mounted/80minix
  install -m 755  os-probes/mounted/x86/83haiku                /usr/lib/os-probes/mounted/83haiku
  install -m 755  os-probes/mounted/common/90linux-distro      /usr/lib/os-probes/mounted/90linux-distro
  install -m 755  os-probes/mounted/x86/90solaris              /usr/lib/os-probes/mounted/90solaris
  install -d                                                   /usr/share/os-prober
  install -m 644  common.sh                                    /usr/share/os-prober/common.sh
  install -d                                                   /var/lib/os-prober

) > $C_FIFO 2>&1
