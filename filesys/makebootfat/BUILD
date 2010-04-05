(

  default_build  &&

  mkdir -p /usr/share/$MODULE/old/  &&

  # These files are outdated, but install them anyway
  install -m644 mbrfat.bin       /usr/share/$MODULE/old/  &&
  install -m644 test/ldlinux.bss /usr/share/$MODULE/old/  &&
  install -m644 test/ldlinux.sys /usr/share/$MODULE/old/  &&

  # Let's make this less painful for users
  # http://brierwooddesign.com/2008/11/29/making-a-bootable-dos-usb-stick-with-freedos
  # http://blog.flameeyes.eu/2008/08/30/updating-a-bios-without-floppies-windows-or-cds
  bsdtar -xf $SOURCE_CACHE/$SOURCE2  &&
  unzip freedos/packages/src_base/kernels.zip source/ukernel/boot/fat{12,16,32lba}.bin  &&

  install -m644 source/ukernel/boot/fat12.bin    /usr/share/$MODULE/  &&
  install -m644 source/ukernel/boot/fat16.bin    /usr/share/$MODULE/  &&
  install -m644 source/ukernel/boot/fat32lba.bin /usr/share/$MODULE/  &&
  install -m644 freedos/setup/odin/command.com   /usr/share/$MODULE/  &&
  install -m644 freedos/setup/odin/kernel.sys    /usr/share/$MODULE/  &&

  gather_docs HISTORY

) > $C_FIFO 2>&1
