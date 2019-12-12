rm -f intel-ucode{,-with-caveats}/list &&
mkdir -p kernel/x86/microcode &&
iucode_tool --write-earlyfw=intel-ucode.img intel-ucode{,-with-caveats}/ &&

prepare_install &&

install -D -m0644 intel-ucode.img /boot/intel-ucode.img
