(

  default_config                   &&
  cd src && make                   &&
  gcc -o libipkc.so.0 -Wl,--whole-archive \
      libipkc.a -Wl,--no-whole-archive -shared    &&
  prepare_install                  &&
  install libipkc.a /usr/lib       &&
  install libipkc.h /usr/include   &&
  install libipkc.so.0 /usr/lib    &&
  ln libipkc.so.0 /usr/lib/libipkc.so

) > $C_FIFO 2>&1
