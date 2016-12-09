  default_cmake_config &&

  make &&
  prepare_install &&

  mkdir -p /usr/lib/lunar/plugins &&
  install -m555 libfreshwrapper-*.so /usr/lib/lunar/plugins &&

  install ../data/freshwrapper.conf.example /etc/ &&
  
  if [ ! -f /etc/freshwrapper.conf ] ; then
   sedit "s:/opt/google/chrome/PepperFlash/:/usr/lib/lunar/plugins/:" ../data/freshwrapper.conf.example &&
   install -Dm644 ../data/freshwrapper.conf.example /etc/freshwrapper.conf
  fi
