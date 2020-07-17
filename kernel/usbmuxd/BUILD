# It wants a user "usbmux"
  add_priv_user usbmux:usbmux -s /usr/bin/false -d /var/usbmuxd &&

  ./autogen.sh &&

  OPTS+=" --without-preflight" &&
  export libplist_LIBS="-lplist-2.0" &&

  default_build
