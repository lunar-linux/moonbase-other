(

  make                                                         &&
  prepare_install                                              &&
  cp iwconfig iwgetid iwlist iwspy iwpriv /usr/sbin/           &&
  cp iwconfig.8 iwlist.8 iwspy.8 iwpriv.8 /usr/share/man/man8/ &&
  cp libiw.so.${VERSION} /usr/lib/                             &&
  cp iwlib.h wireless.h /usr/include/                          &&
  ln -s /usr/lib/libiw.so.${VERSION} /usr/lib/libiw.so         &&
  ldconfig                                                     &&

  gather_docs HOTPLUG.txt PCMCIA.txt

) > $C_FIFO 2>&1
