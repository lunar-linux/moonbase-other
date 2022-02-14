
prepare_install &&

  for ids in pci.ids pnp.ids usb.ids; do
    install -Dm644 "$ids" "/usr/share/hwdata/${ids}"
  done
