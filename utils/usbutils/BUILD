(

  sedit 's:\$(datarootdir)/pkgconfig:/usr/lib/pkgconfig:g' Makefile.in

  default_build
  gunzip $SOURCE_CACHE/$SOURCE2 -c > usb.ids
  rm -f /usr/share/usb.ids*
  install -m644 usb.ids /usr/share

  # the next line makes sure you will get a fresh usb id's db
  # everytime you lin usbutils:
  rm -f $SOURCE_CACHE/$SOURCE2

)
